-- scénario: 
-- Rôle : Responsable commercial / chef de rayon d'une librairie spécialisée en mangas
-- Objectif : Utiliser la base de données pour piloter les ventes, le stock, les promotions et la relation client.
-- Données à extraire régulièrement par le responsable :
--  1) Liste des mangas à réapprovisionner (quantité faible) triée par éditeur
--  2) Top 10 des mangas les plus vendus (en nombre d'exemplaires) sur une période
--  3) Clients fidèles (nombre de commandes et montant total) pour actions marketing
--  4) Efficacité des promotions (ventes des volumes en promotion vs hors promotion)
--  5) Notes moyennes et commentaires clients pour repérer problèmes qualité
--  6) Répartition du stock et valeur du stock par éditeur et par genre
--  7) Commandes en cours et retardées avec détails contact client et employé responsable
--  8) Volumes jamais commandés ou jamais réapprovisionnés (pour promotions ciblées)

SELECT titre_m, auteur, prix, quantite
FROM Manga
WHERE quantite > 0
ORDER BY prix DESC;

SELECT ID_volume, titre_m, num_volume
FROM Manga
WHERE titre_m LIKE '%One Piece%'
ORDER BY num_volume;

SELECT DISTINCT e.Nom_editeur
FROM Manga m
JOIN editeur e ON m.ID_editeur = e.ID_editeur
ORDER BY e.Nom_editeur;

SELECT ID_client, nom, Prenom, email
FROM Client
WHERE ID_client IN ('C001','C002','C003','C010')
ORDER BY nom;

SELECT ID_comande, date_c, montant, statut
FROM commande
WHERE date_c BETWEEN '2025-02-01' AND '2025-03-31'
ORDER BY date_c;

SELECT m.ID_volume, m.titre_m, g.Nom_genre, m.prix
FROM Manga m
JOIN genre g ON m.ID_genre = g.ID_genre
WHERE g.Nom_genre IN ('Horreur','Mystère')
  AND m.prix < 9
ORDER BY m.prix;

SELECT e.Nom_editeur, COUNT(m.ID_volume) AS nb_tomes, SUM(m.prix * m.quantite) AS valeur_stock
FROM Manga m
JOIN editeur e ON m.ID_editeur = e.ID_editeur
GROUP BY e.Nom_editeur
ORDER BY valeur_stock DESC;

SELECT c.ID_client, c.nom, c.Prenom, COUNT(cmd.ID_comande) AS nb_commandes, SUM(cmd.montant) AS total_depense
FROM Client c
LEFT JOIN commande cmd ON c.ID_client = cmd.ID_client
GROUP BY c.ID_client, c.nom, c.Prenom
HAVING COUNT(cmd.ID_comande) > 2
ORDER BY total_depense DESC;

SELECT a.ID_client, AVG(a.Note_client) AS note_moyenne, COUNT(a.ID_avis) AS nb_avis
FROM Avis a
GROUP BY a.ID_client
HAVING AVG(a.Note_client) < 4
ORDER BY note_moyenne ASC;

SELECT g.Nom_genre, COUNT(m.ID_volume) AS nb_volumes, SUM(m.quantite) AS stock_total
FROM genre g
LEFT JOIN Manga m ON g.ID_genre = m.ID_genre
GROUP BY g.Nom_genre
HAVING SUM(m.quantite) IS NOT NULL
ORDER BY stock_total DESC;

SELECT p.ID_promotion, p.promotion_, COUNT(m.ID_volume) AS nb_volumes_en_promo
FROM Promotion p
LEFT JOIN Manga m ON m.ID_promotion = p.ID_promotion
GROUP BY p.ID_promotion, p.promotion_
HAVING COUNT(m.ID_volume) > 0
ORDER BY nb_volumes_en_promo DESC;

SELECT DATE_TRUNC('month', date_c) AS mois, COUNT(ID_comande) AS nb_commandes, AVG(montant) AS montant_moyen
FROM commande
GROUP BY DATE_TRUNC('month', date_c)
ORDER BY mois;

SELECT cmd.ID_comande, c.ID_client, c.nom, m.ID_volume, m.titre_m, cont.quantite
FROM commande cmd
JOIN Client c ON cmd.ID_client = c.ID_client
JOIN contient cont ON cont.ID_comande = cmd.ID_comande
JOIN Manga m ON m.ID_volume = cont.ID_volume
WHERE cmd.ID_comande = 9;

SELECT m.ID_volume, m.titre_m, m.prix, p.promotion_, p.promotion_montant_
FROM Manga m
LEFT JOIN Promotion p ON m.ID_promotion = p.ID_promotion
ORDER BY m.ID_volume LIMIT 100;

SELECT e.ID_editeur, e.Nom_editeur, m.titre_m
FROM editeur e
LEFT JOIN Manga m ON m.ID_editeur = e.ID_editeur
ORDER BY e.Nom_editeur;

SELECT cmd.ID_comande, cmd.date_c, cmd.montant, emp.Nom_e || ' ' || emp.prenom_e AS employe, c.nom || ' ' || c.Prenom AS client, m.titre_m, cont.quantite
FROM commande cmd
JOIN Employer emp ON cmd.ID_employer = emp.ID_employer
JOIN Client c ON cmd.ID_client = c.ID_client
JOIN contient cont ON cont.ID_comande = cmd.ID_comande
JOIN Manga m ON m.ID_volume = cont.ID_volume
WHERE cmd.statut = 'en cours'
ORDER BY cmd.date_c;

SELECT r.ID_approvisionnement, f.Nom_f, r.Date_commande_f, r.Date_reception, m.ID_volume, m.titre_m, m.quantite
FROM reapprovisionnement r
JOIN fournisseur f ON r.ID_fournisseur = f.ID_fournisseur
LEFT JOIN Manga m ON r.ID_volume = m.ID_volume
ORDER BY r.Date_commande_f DESC;

SELECT ID_client, nom, Prénom, email
FROM Client
WHERE ID_client NOT IN (SELECT DISTINCT ID_client FROM commande);

SELECT m.ID_volume, m.titre_m
FROM Manga m
WHERE NOT EXISTS (
  SELECT 1 FROM contient c WHERE c.ID_volume = m.ID_volume
);

SELECT m.ID_volume, m.titre_m, m.prix
FROM Manga m
WHERE m.prix > ALL (
  SELECT AVG(m2.prix) FROM Manga m2 GROUP BY m2.ID_genre
);

SELECT m.ID_volume, m.titre_m, m.prix
FROM Manga m
WHERE m.prix < ANY (
  SELECT m2.prix FROM Manga m2 WHERE m2.titre_m LIKE '%One Piece%'
);

SELECT cmd.ID_comande, cmd.ID_client, cmd.montant
FROM commande cmd
WHERE cmd.montant > (
  SELECT AVG(c2.montant) FROM commande c2 WHERE c2.ID_client = cmd.ID_client
);

SELECT emp.ID_employer, emp.Nom_e, emp.prénom_e
FROM Employer emp
WHERE NOT EXISTS (
  SELECT 1 FROM commande cmd WHERE cmd.ID_employer = emp.ID_employer
);

SELECT ID_client, nom, Prenom, total_depense FROM (
  SELECT c.ID_client, c.nom, c.Prenom, COALESCE(SUM(cmd.montant),0) AS total_depense
  FROM Client c
  LEFT JOIN commande cmd ON c.ID_client = cmd.ID_client
  GROUP BY c.ID_client, c.nom, c.Prenom
) t
WHERE total_depense >= ALL (SELECT COALESCE(SUM(m2.montant),0) FROM Client c2 LEFT JOIN commande m2 ON c2.ID_client = m2.ID_client GROUP BY c2.ID_client);

SELECT DISTINCT m.ID_volume, m.titre_m
FROM Manga m
WHERE EXISTS (
  SELECT 1 FROM reapprovisionnement r WHERE r.ID_volume = m.ID_volume AND r.Date_reception >= '2025-02-01'
);
