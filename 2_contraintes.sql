
-- validation_constraints.sql
-- Contains NOT NULL, UNIQUE, CHECK and other validation rules.
-- NOTE: CHECK constraints are enforced starting MySQL 8.0.16.
-- If you run an older MySQL version, CHECK() will be parsed but ignored;
-- in that case implement validation with TRIGGERS or in application layer.

USE manga_shop;

-- CLIENT validations
ALTER TABLE `Client`
  MODIFY `ID_client` VARCHAR(50) NOT NULL,
  MODIFY `nom` VARCHAR(50) NOT NULL,
  MODIFY `prenom` VARCHAR(50) NOT NULL,
  MODIFY `email` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `uq_client_email` UNIQUE (`email`),
  ADD CONSTRAINT `chk_client_email` CHECK (`email` REGEXP '^[^@]+@[^@]+\\.[^@]+$'),
  ADD CONSTRAINT `chk_client_tel` CHECK (CHAR_LENGTH(`numero_de_tel`) BETWEEN 8 AND 20);

-- EMPLOYER validations
ALTER TABLE `Employer`
  MODIFY `nom_e` VARCHAR(50) NOT NULL,
  MODIFY `prenom_e` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `chk_employer_manager_self` CHECK (`ID_employer_manager` IS NULL OR `ID_employer_manager` <> `ID_employer`),
  ADD CONSTRAINT `chk_employer_poste` CHECK (`poste` IN ('Vendeur','Manager','Stock','Admin'));

-- EDITEUR validations
ALTER TABLE `Editeur`
  MODIFY `nom_editeur` VARCHAR(50) NOT NULL;

-- GENRE validations
ALTER TABLE `Genre`
  MODIFY `nom_genre` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `uq_genre_nom` UNIQUE (`nom_genre`);

-- FOURNISSEUR validations
ALTER TABLE `Fournisseur`
  MODIFY `nom_f` VARCHAR(50) NOT NULL;

-- PROMOTION validations
ALTER TABLE `Promotion`
  MODIFY `promotion_` INT NOT NULL,
  MODIFY `promotion_montant_` DECIMAL(15,2) NOT NULL,
  ADD CONSTRAINT `chk_promotion_pct` CHECK (`promotion_` BETWEEN 0 AND 100),
  ADD CONSTRAINT `chk_promotion_montant` CHECK (`promotion_montant_` >= 0);

-- AVIS validations
ALTER TABLE `Avis`
  MODIFY `note_client` INT NOT NULL,
  ADD CONSTRAINT `chk_avis_note` CHECK (`note_client` BETWEEN 0 AND 5),
  ADD CONSTRAINT `chk_avis_comment_len` CHECK (CHAR_LENGTH(`commentaire`) <= 500);

-- THEME validations
ALTER TABLE `Theme`
  MODIFY `nom_t` VARCHAR(50) NOT NULL;

-- MANGA validations
ALTER TABLE `Manga`
  MODIFY `ISBN` BIGINT NOT NULL,
  MODIFY `num_volume` INT NOT NULL,
  MODIFY `titre_m` VARCHAR(50) NOT NULL,
  MODIFY `auteur` VARCHAR(50) NOT NULL,
  MODIFY `prix` DECIMAL(15,2) NOT NULL,
  MODIFY `quantite` INT NOT NULL,
  MODIFY `statut_stock` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `chk_manga_prix` CHECK (`prix` >= 0),
  ADD CONSTRAINT `chk_manga_qte` CHECK (`quantite` >= 0),
  ADD CONSTRAINT `chk_manga_isbn` CHECK (`ISBN` > 0),
  ADD CONSTRAINT `chk_manga_statut` CHECK (`statut_stock` IN ('en_stock','rupture','precommande'));

-- SERIE validations
ALTER TABLE `Serie`
  MODIFY `titre_s` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `chk_serie_nb` CHECK (`nombre_de_volume` >= 0);

-- COMMANDE validations
ALTER TABLE `Commande`
  MODIFY `date_c` DATE NOT NULL,
  MODIFY `montant` DECIMAL(15,2) NOT NULL,
  MODIFY `mode_de_payement` VARCHAR(50) NOT NULL,
  ADD CONSTRAINT `chk_commande_montant` CHECK (`montant` >= 0),
  ADD CONSTRAINT `chk_commande_dates` CHECK (`date_reception` IS NULL OR `date_reception` >= `date_c`),
  ADD CONSTRAINT `chk_commande_mode` CHECK (`mode_de_payement` IN ('CB','Espece','Cheque','Virement')),
  ADD CONSTRAINT `chk_commande_statut` CHECK (`statut` IN ('En cours','Expediee','Livree','Annulee'));

-- REAPPROVISIONNEMENT validations
ALTER TABLE `Reapprovisionnement`
  MODIFY `Date_commande_f` DATE NOT NULL,
  ADD CONSTRAINT `chk_reappro_dates` CHECK (`Date_reception` IS NULL OR `Date_commande_f` <= `Date_reception`);

-- CONTIENT validations (quantity must be > 0)
ALTER TABLE `Contient`
  MODIFY `quantite` INT NOT NULL,
  ADD CONSTRAINT `chk_contient_qte` CHECK (`quantite` > 0);

-- A_pour_theme : no extra validations needed beyond PK
