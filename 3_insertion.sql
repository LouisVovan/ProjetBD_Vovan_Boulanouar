-- 1) Clients (30)
INSERT INTO Client (ID_client, nom, Prenom, email, adresse, numero_de_tel) VALUES
('C001','Dupont','Alice','alice.dupont@example.com','12 rue des Fleurs, 75001 Paris','+33123456701'),
('C002','Nguyen','Minh','minh.nguyen@example.com','23 avenue Victor Hugo, 69003 Lyon','+33456789012'),
('C003','Smith','Liam','liam.smith@example.com','45 rue Pasteur, 59000 Lille','+33344455667'),
('C004','Garcia','Sofia','sofia.garcia@example.com','7 place Bellecour, 69002 Lyon','+33455667788'),
('C005','Kobayashi','Yuki','yuki.kobayashi@example.com','16 rue du Temple, 75004 Paris','+33177889900'),
('C006','Brien','Nora','nora.obrien@example.com','2 rue de la Paix, 67000 Strasbourg','+33399887766'),
('C007','Martinez','Carlos','carlos.martinez@example.com','10 boulevard Saint-Michel, 75005 Paris','+33122334455'),
('C008','Hassan','Amina','amina.hassan@example.com','8 rue Lafayette, 31000 Toulouse','+33566778899'),
('C009','Petrov','Ivan','ivan.petrov@example.com','4 rue du Lycée, 06000 Nice','+33411223344'),
('C010','Silva','Mariana','mariana.silva@example.com','11 rue Gambetta, 34000 Montpellier','+33455660011'),
('C011','Khan','Omar','omar.khan@example.com','37 avenue Jean Jaurès, 44000 Nantes','+33233445566'),
('C012','Rossi','Giulia','giulia.rossi@example.com','28 rue Sainte-Catherine, 33000 Bordeaux','+33577889911'),
('C013','Kim','Jiwoo','jiwoo.kim@example.com','5 rue des Forges, 21000 Dijon','+33355664422'),
('C014','Brown','Emily','emily.brown@example.com','9 rue du Parc, 67000 Strasbourg','+33388776655'),
('C015','Laurent','Théo','theo.laurent@example.com','14 rue Saint-Paul, 75004 Paris','+33199887766'),
('C016','Muller','Hannah','hannah.muller@example.com','3 rue des Lilas, 37000 Tours','+33277881122'),
('C017','Silva','João','joao.silva@example.com','19 rue Nationale, 59000 Lille','+33366554433'),
('C018','Ivanova','Anya','anya.ivanova@example.com','6 rue des Arts, 21000 Dijon','+33322113344'),
('C019','Tanaka','Haruto','haruto.tanaka@example.com','21 rue Mozart, 69006 Lyon','+33499887766'),
('C020','Davis','Noah','noah.davis@example.com','50 rue du Commerce, 35000 Rennes','+33255667788'),
('C021','Ng','Sabrina','sabrina.ng@example.com','12 rue Victor Hugo, 97400 Saint-Denis','+2621234567'),
('C022','Gonzalez','Lucia','lucia.gonzalez@example.com','18 rue du Marché, 59000 Lille','+33344556677'),
('C023','Almeida','Pedro','pedro.almeida@example.com','30 rue du Château, 44000 Nantes','+33299887744'),
('C024','Ahmed','Fatima','fatima.ahmed@example.com','2 rue de l Université, 13001 Marseille','+33433221100'),
('C025','Lopez','Diego','diego.lopez@example.com','7 rue des Écoles, 67000 Strasbourg','+33377665544'),
('C026','Williams','Chloe','chloe.williams@example.com','9 rue des Remparts, 21000 Dijon','+33311447788'),
('C027','Singh','Aarav','aarav.singh@example.com','41 rue Saint-Pierre, 34000 Montpellier','+33466778855'),
('C028','Chen','Mei','mei.chen@example.com','15 avenue du Général Leclerc, 76000 Rouen','+33233448877'),
('C029','García','Marcos','marcos.garcia@example.com','24 rue Victor Hugo, 13002 Marseille','+33422334455'),
('C030','Oluwaseun','Tobi','tobi.oluwaseun@example.com','1 rue de la République, 21000 Dijon','+33322117788');

-- 2) Editeurs (réels)
INSERT INTO editeur (ID_editeur, Nom_editeur) VALUES
(1,'Shueisha'),
(2,'Kodansha'),
(3,'Shogakukan'),
(4,'Hakusensha'),
(5,'Viz Media'),
(6,'Glénat'),
(7,'Kana'),
(8,'Kurokawa');

-- 3) Genres
INSERT INTO genre (ID_genre, Nom_genre) VALUES
(1,'Shōnen'),
(2,'Seinen'),
(3,'Shōjo'),
(4,'Josei'),
(5,'Horreur'),
(6,'Fantaisie'),
(7,'Science-Fiction'),
(8,'Mystère');

-- 4) Fournisseurs (5)
INSERT INTO fournisseur (ID_fournisseur, Nom_f, Coordonees) VALUES
(1,'JapanBookSupply','contact@japanbooksupply.example'),
(2,'MangaWholesaleEU','sales@mangawholesale.eu'),
(3,'LibrairieGrossiste','info@libgrossiste.fr'),
(4,'OtakuDistrib','support@otakudistr.com'),
(5,'ComicsImport','orders@comicsimport.example');

-- 5) Promotions (20)
INSERT INTO Promotion (ID_promotion, promotion_, promotion_montant_) VALUES
(1,10,5.00),(2,15,7.50),(3,20,10.00),(4,5,2.50),(5,25,12.50),
(6,30,18.00),(7,50,45.00),(8,40,24.00),(9,12,6.00),(10,18,9.00),
(11,7,3.50),(12,22,11.00),(13,8,4.00),(14,14,7.00),(15,33,16.50),
(16,6,3.00),(17,17,8.50),(18,27,13.50),(19,9,4.50),(20,35,21.00);

-- 6) Thèmes (10)
INSERT INTO Theme (ID_theme, Nom_t) VALUES
(1,'Aventure'),
(2,'Arts martiaux'),
(3,'Romance'),
(4,'Science et technologie'),
(5,'Horreur'),
(6,'Mystère & Enquête'),
(7,'Fantastique'),
(8,'Sport'),
(9,'Historique'),
(10,'Société');

-- 7) Employer (5) - manager FK nullable: manager of employees is ID 1
INSERT INTO Employer (ID_employer, Nom_e, prenom_e, poste, ID_employer_manager) VALUES
(1,'Moreau','Élise','Admin','NULL'),
(2,'Bernard','Lucas','Vendeur',1),
(3,'Faure','Amélie','Vendeur',1),
(4,'Klein','Marc','Vendeur',1),
(5,'Ndiaye','Aicha','Stock',2);

-- 8) Manga (150)
-- We'll insert 150 volumes from real series. For brevité on certains champs répétitifs, on suit un motif : ISBN ~ 9781000000 + ID_volume
-- Attribution éditeur et genre selon la série. 20 volumes (ID 1..20) recevront des promotions (ID 1..20)
INSERT INTO Manga (ID_volume, ISBN, num_volume, titre_m, auteur, prix, quantite, statue_stock, ID_promotion, ID_editeur, ID_genre) VALUES
-- One Piece (Shueisha) volumes 1..24 -> ID 1..24 (promo on some)
(1,9781000001,1,'One Piece Vol.1','Eiichiro Oda',7.90,50,'en_stock',1,1,1),
(2,9781000002,2,'One Piece Vol.2','Eiichiro Oda',7.90,48,'en_stock',2,1,1),
(3,9781000003,3,'One Piece Vol.3','Eiichiro Oda',7.90,45,'en_stock',3,1,1),
(4,9781000004,4,'One Piece Vol.4','Eiichiro Oda',7.90,60,'en_stock',4,1,1),
(5,9781000005,5,'One Piece Vol.5','Eiichiro Oda',7.90,42,'en_stock',5,1,1),
(6,9781000006,6,'One Piece Vol.6','Eiichiro Oda',7.90,39,'en_stock',NULL,1,1),
(7,9781000007,7,'One Piece Vol.7','Eiichiro Oda',7.90,35,'en_stock',NULL,1,1),
(8,9781000008,8,'One Piece Vol.8','Eiichiro Oda',7.90,33,'en_stock',NULL,1,1),
(9,9781000009,9,'One Piece Vol.9','Eiichiro Oda',7.90,30,'en_stock',NULL,1,1),
(10,9781000010,10,'One Piece Vol.10','Eiichiro Oda',7.90,28,'en_stock',NULL,1,1),
(11,9781000011,11,'One Piece Vol.11','Eiichiro Oda',7.90,25,'en_stock',NULL,1,1),
(12,9781000012,12,'One Piece Vol.12','Eiichiro Oda',7.90,22,'en_stock',NULL,1,1),
(13,9781000013,13,'One Piece Vol.13','Eiichiro Oda',7.90,20,'en_stock',NULL,1,1),
(14,9781000014,14,'One Piece Vol.14','Eiichiro Oda',7.90,19,'en_stock',NULL,1,1),
(15,9781000015,15,'One Piece Vol.15','Eiichiro Oda',7.90,18,'en_stock',NULL,1,1),
(16,9781000016,16,'One Piece Vol.16','Eiichiro Oda',7.90,17,'en_stock',NULL,1,1),
(17,9781000017,17,'One Piece Vol.17','Eiichiro Oda',7.90,16,'en_stock',NULL,1,1),
(18,9781000018,18,'One Piece Vol.18','Eiichiro Oda',7.90,15,'en_stock',NULL,1,1),
(19,9781000019,19,'One Piece Vol.19','Eiichiro Oda',7.90,14,'en_stock',NULL,1,1),
(20,9781000020,20,'One Piece Vol.20','Eiichiro Oda',7.90,13,'en_stock',20,1,1),
(21,9781000021,21,'One Piece Vol.21','Eiichiro Oda',7.90,12,'en_stock',NULL,1,1),
(22,9781000022,22,'One Piece Vol.22','Eiichiro Oda',7.90,11,'en_stock',NULL,1,1),
(23,9781000023,23,'One Piece Vol.23','Eiichiro Oda',7.90,10,'en_stock',NULL,1,1),
(24,9781000024,24,'One Piece Vol.24','Eiichiro Oda',7.90,8,'en_stock',NULL,1,1),

-- Naruto (Shueisha) volumes 25..36 -> num_volume 1..12 stored as 1..12 but ID 25..36
(25,9781000025,1,'Naruto Vol.1','Masashi Kishimoto',6.90,40,'en_stock',6,1,1),
(26,9781000026,2,'Naruto Vol.2','Masashi Kishimoto',6.90,38,'en_stock',NULL,1,1),
(27,9781000027,3,'Naruto Vol.3','Masashi Kishimoto',6.90,36,'en_stock',NULL,1,1),
(28,9781000028,4,'Naruto Vol.4','Masashi Kishimoto',6.90,35,'en_stock',NULL,1,1),
(29,9781000029,5,'Naruto Vol.5','Masashi Kishimoto',6.90,34,'en_stock',NULL,1,1),
(30,9781000030,6,'Naruto Vol.6','Masashi Kishimoto',6.90,33,'en_stock',NULL,1,1),
(31,9781000031,7,'Naruto Vol.7','Masashi Kishimoto',6.90,32,'en_stock',NULL,1,1),
(32,9781000032,8,'Naruto Vol.8','Masashi Kishimoto',6.90,31,'en_stock',NULL,1,1),
(33,9781000033,9,'Naruto Vol.9','Masashi Kishimoto',6.90,30,'en_stock',NULL,1,1),
(34,9781000034,10,'Naruto Vol.10','Masashi Kishimoto',6.90,29,'en_stock',NULL,1,1),
(35,9781000035,11,'Naruto Vol.11','Masashi Kishimoto',6.90,28,'en_stock',NULL,1,1),
(36,9781000036,12,'Naruto Vol.12','Masashi Kishimoto',6.90,27,'en_stock',NULL,1,1),

-- Dragon Ball (Shueisha) ID 37..45 (9 volumes)
(37,9781000037,1,'Dragon Ball Vol.1','Akira Toriyama',5.90,30,'en_stock',NULL,1,1),
(38,9781000038,2,'Dragon Ball Vol.2','Akira Toriyama',5.90,28,'en_stock',NULL,1,1),
(39,9781000039,3,'Dragon Ball Vol.3','Akira Toriyama',5.90,26,'en_stock',NULL,1,1),
(40,9781000040,4,'Dragon Ball Vol.4','Akira Toriyama',5.90,25,'en_stock',NULL,1,1),
(41,9781000041,5,'Dragon Ball Vol.5','Akira Toriyama',5.90,24,'en_stock',NULL,1,1),
(42,9781000042,6,'Dragon Ball Vol.6','Akira Toriyama',5.90,22,'en_stock',NULL,1,1),
(43,9781000043,7,'Dragon Ball Vol.7','Akira Toriyama',5.90,20,'en_stock',NULL,1,1),
(44,9781000044,8,'Dragon Ball Vol.8','Akira Toriyama',5.90,18,'en_stock',NULL,1,1),
(45,9781000045,9,'Dragon Ball Vol.9','Akira Toriyama',5.90,15,'en_stock',NULL,1,1),

-- Bleach (Shueisha) ID 46..55 (10 volumes)
(46,9781000046,1,'Bleach Vol.1','Tite Kubo',6.50,40,'en_stock',NULL,1,1),
(47,9781000047,2,'Bleach Vol.2','Tite Kubo',6.50,38,'en_stock',NULL,1,1),
(48,9781000048,3,'Bleach Vol.3','Tite Kubo',6.50,35,'en_stock',NULL,1,1),
(49,9781000049,4,'Bleach Vol.4','Tite Kubo',6.50,33,'en_stock',NULL,1,1),
(50,9781000050,5,'Bleach Vol.5','Tite Kubo',6.50,30,'en_stock',NULL,1,1),
(51,9781000051,6,'Bleach Vol.6','Tite Kubo',6.50,28,'en_stock',NULL,1,1),
(52,9781000052,7,'Bleach Vol.7','Tite Kubo',6.50,26,'en_stock',NULL,1,1),
(53,9781000053,8,'Bleach Vol.8','Tite Kubo',6.50,24,'en_stock',NULL,1,1),
(54,9781000054,9,'Bleach Vol.9','Tite Kubo',6.50,22,'en_stock',NULL,1,1),
(55,9781000055,10,'Bleach Vol.10','Tite Kubo',6.50,20,'en_stock',NULL,1,1),

-- Berserk (Hakusensha) ID 56..67 (12 volumes)
(56,9781000056,1,'Berserk Vol.1','Kentaro Miura',9.90,15,'en_stock',7,4,2),
(57,9781000057,2,'Berserk Vol.2','Kentaro Miura',9.90,14,'en_stock',NULL,4,2),
(58,9781000058,3,'Berserk Vol.3','Kentaro Miura',9.90,13,'en_stock',NULL,4,2),
(59,9781000059,4,'Berserk Vol.4','Kentaro Miura',9.90,12,'en_stock',NULL,4,2),
(60,9781000060,5,'Berserk Vol.5','Kentaro Miura',9.90,11,'en_stock',NULL,4,2),
(61,9781000061,6,'Berserk Vol.6','Kentaro Miura',9.90,10,'en_stock',NULL,4,2),
(62,9781000062,7,'Berserk Vol.7','Kentaro Miura',9.90,9,'en_stock',NULL,4,2),
(63,9781000063,8,'Berserk Vol.8','Kentaro Miura',9.90,8,'en_stock',NULL,4,2),
(64,9781000064,9,'Berserk Vol.9','Kentaro Miura',9.90,7,'en_stock',NULL,4,2),
(65,9781000065,10,'Berserk Vol.10','Kentaro Miura',9.90,6,'en_stock',NULL,4,2),
(66,9781000066,11,'Berserk Vol.11','Kentaro Miura',9.90,5,'en_stock',NULL,4,2),
(67,9781000067,12,'Berserk Vol.12','Kentaro Miura',9.90,4,'en_stock',NULL,4,2),

-- Death Note (Shueisha) ID 68..79 (12 volumes)
(68,9781000068,1,'Death Note Vol.1','Tsugumi Ohba & Takeshi Obata',7.50,20,'en_stock',8,1,8),
(69,9781000069,2,'Death Note Vol.2','Tsugumi Ohba & Takeshi Obata',7.50,19,'en_stock',NULL,1,8),
(70,9781000070,3,'Death Note Vol.3','Tsugumi Ohba & Takeshi Obata',7.50,18,'en_stock',NULL,1,8),
(71,9781000071,4,'Death Note Vol.4','Tsugumi Ohba & Takeshi Obata',7.50,17,'en_stock',NULL,1,8),
(72,9781000072,5,'Death Note Vol.5','Tsugumi Ohba & Takeshi Obata',7.50,16,'en_stock',NULL,1,8),
(73,9781000073,6,'Death Note Vol.6','Tsugumi Ohba & Takeshi Obata',7.50,15,'en_stock',NULL,1,8),
(74,9781000074,7,'Death Note Vol.7','Tsugumi Ohba & Takeshi Obata',7.50,14,'en_stock',NULL,1,8),
(75,9781000075,8,'Death Note Vol.8','Tsugumi Ohba & Takeshi Obata',7.50,13,'en_stock',NULL,1,8),
(76,9781000076,9,'Death Note Vol.9','Tsugumi Ohba & Takeshi Obata',7.50,12,'en_stock',NULL,1,8),
(77,9781000077,10,'Death Note Vol.10','Tsugumi Ohba & Takeshi Obata',7.50,11,'en_stock',NULL,1,8),
(78,9781000078,11,'Death Note Vol.11','Tsugumi Ohba & Takeshi Obata',7.50,10,'en_stock',NULL,1,8),
(79,9781000079,12,'Death Note Vol.12','Tsugumi Ohba & Takeshi Obata',7.50,9,'en_stock',NULL,1,8),

-- Attack on Titan (Kodansha) ID 80..91 (12 volumes)
(80,9781000080,1,'Attack on Titan Vol.1','Hajime Isayama',8.50,25,'en_stock',9,2,2),
(81,9781000081,2,'Attack on Titan Vol.2','Hajime Isayama',8.50,24,'en_stock',NULL,2,2),
(82,9781000082,3,'Attack on Titan Vol.3','Hajime Isayama',8.50,23,'en_stock',NULL,2,2),
(83,9781000083,4,'Attack on Titan Vol.4','Hajime Isayama',8.50,22,'en_stock',NULL,2,2),
(84,9781000084,5,'Attack on Titan Vol.5','Hajime Isayama',8.50,21,'en_stock',NULL,2,2),
(85,9781000085,6,'Attack on Titan Vol.6','Hajime Isayama',8.50,20,'en_stock',NULL,2,2),
(86,9781000086,7,'Attack on Titan Vol.7','Hajime Isayama',8.50,18,'en_stock',NULL,2,2),
(87,9781000087,8,'Attack on Titan Vol.8','Hajime Isayama',8.50,17,'en_stock',NULL,2,2),
(88,9781000088,9,'Attack on Titan Vol.9','Hajime Isayama',8.50,16,'en_stock',NULL,2,2),
(89,9781000089,10,'Attack on Titan Vol.10','Hajime Isayama',8.50,15,'en_stock',NULL,2,2),
(90,9781000090,11,'Attack on Titan Vol.11','Hajime Isayama',8.50,14,'en_stock',NULL,2,2),
(91,9781000091,12,'Attack on Titan Vol.12','Hajime Isayama',8.50,13,'en_stock',NULL,2,2),

-- JoJo's Bizarre Adventure (Shueisha) ID 92..101 (10 volumes)
(92,9781000092,1,'JoJo Vol.1','Hirohiko Araki',7.80,20,'en_stock',NULL,1,1),
(93,9781000093,2,'JoJo Vol.2','Hirohiko Araki',7.80,19,'en_stock',NULL,1,1),
(94,9781000094,3,'JoJo Vol.3','Hirohiko Araki',7.80,18,'en_stock',NULL,1,1),
(95,9781000095,4,'JoJo Vol.4','Hirohiko Araki',7.80,17,'en_stock',NULL,1,1),
(96,9781000096,5,'JoJo Vol.5','Hirohiko Araki',7.80,16,'en_stock',NULL,1,1),
(97,9781000097,6,'JoJo Vol.6','Hirohiko Araki',7.80,15,'en_stock',NULL,1,1),
(98,9781000098,7,'JoJo Vol.7','Hirohiko Araki',7.80,14,'en_stock',NULL,1,1),
(99,9781000099,8,'JoJo Vol.8','Hirohiko Araki',7.80,13,'en_stock',NULL,1,1),
(100,9781000100,9,'JoJo Vol.9','Hirohiko Araki',7.80,12,'en_stock',NULL,1,1),
(101,9781000101,10,'JoJo Vol.10','Hirohiko Araki',7.80,11,'en_stock',NULL,1,1),

-- Hunter x Hunter (Shueisha) ID 102..111 (10 volumes)
(102,9781000102,1,'Hunter x Hunter Vol.1','Yoshihiro Togashi',7.50,25,'en_stock',NULL,1,1),
(103,9781000103,2,'Hunter x Hunter Vol.2','Yoshihiro Togashi',7.50,24,'en_stock',NULL,1,1),
(104,9781000104,3,'Hunter x Hunter Vol.3','Yoshihiro Togashi',7.50,23,'en_stock',NULL,1,1),
(105,9781000105,4,'Hunter x Hunter Vol.4','Yoshihiro Togashi',7.50,22,'en_stock',NULL,1,1),
(106,9781000106,5,'Hunter x Hunter Vol.5','Yoshihiro Togashi',7.50,21,'en_stock',NULL,1,1),
(107,9781000107,6,'Hunter x Hunter Vol.6','Yoshihiro Togashi',7.50,20,'en_stock',NULL,1,1),
(108,9781000108,7,'Hunter x Hunter Vol.7','Yoshihiro Togashi',7.50,19,'en_stock',NULL,1,1),
(109,9781000109,8,'Hunter x Hunter Vol.8','Yoshihiro Togashi',7.50,18,'en_stock',NULL,1,1),
(110,9781000110,9,'Hunter x Hunter Vol.9','Yoshihiro Togashi',7.50,17,'en_stock',NULL,1,1),
(111,9781000111,10,'Hunter x Hunter Vol.10','Yoshihiro Togashi',7.50,16,'en_stock',NULL,1,1),

-- Vagabond (Kodansha) ID 112..116 (5 volumes)
(112,9781000112,1,'Vagabond Vol.1','Takehiko Inoue',8.90,12,'en_stock',NULL,2,2),
(113,9781000113,2,'Vagabond Vol.2','Takehiko Inoue',8.90,11,'en_stock',NULL,2,2),
(114,9781000114,3,'Vagabond Vol.3','Takehiko Inoue',8.90,10,'en_stock',NULL,2,2),
(115,9781000115,4,'Vagabond Vol.4','Takehiko Inoue',8.90,9,'en_stock',NULL,2,2),
(116,9781000116,5,'Vagabond Vol.5','Takehiko Inoue',8.90,8,'en_stock',NULL,2,2),

-- Bakuman (Shueisha) ID 117..121 (5 volumes)
(117,9781000117,1,'Bakuman Vol.1','Tsugumi Ohba & Takeshi Obata',7.00,20,'en_stock',NULL,1,1),
(118,9781000118,2,'Bakuman Vol.2','Tsugumi Ohba & Takeshi Obata',7.00,18,'en_stock',NULL,1,1),
(119,9781000119,3,'Bakuman Vol.3','Tsugumi Ohba & Takeshi Obata',7.00,17,'en_stock',NULL,1,1),
(120,9781000120,4,'Bakuman Vol.4','Tsugumi Ohba & Takeshi Obata',7.00,16,'en_stock',NULL,1,1),
(121,9781000121,5,'Bakuman Vol.5','Tsugumi Ohba & Takeshi Obata',7.00,15,'en_stock',NULL,1,1),

-- Fullmetal Alchemist (Square Enix / Kurokawa) ID 122..129 (8 volumes)
(122,9781000122,1,'Fullmetal Alchemist Vol.1','Hiromu Arakawa',8.00,18,'en_stock',NULL,8,2),
(123,9781000123,2,'Fullmetal Alchemist Vol.2','Hiromu Arakawa',8.00,17,'en_stock',NULL,8,2),
(124,9781000124,3,'Fullmetal Alchemist Vol.3','Hiromu Arakawa',8.00,16,'en_stock',NULL,8,2),
(125,9781000125,4,'Fullmetal Alchemist Vol.4','Hiromu Arakawa',8.00,15,'en_stock',NULL,8,2),
(126,9781000126,5,'Fullmetal Alchemist Vol.5','Hiromu Arakawa',8.00,14,'en_stock',NULL,8,2),
(127,9781000127,6,'Fullmetal Alchemist Vol.6','Hiromu Arakawa',8.00,13,'en_stock',NULL,8,2),
(128,9781000128,7,'Fullmetal Alchemist Vol.7','Hiromu Arakawa',8.00,12,'en_stock',NULL,8,2),
(129,9781000129,8,'Fullmetal Alchemist Vol.8','Hiromu Arakawa',8.00,11,'en_stock',NULL,8,2),

-- Tokyo Ghoul (Shueisha) ID 130..136 (7 volumes)
(130,9781000130,1,'Tokyo Ghoul Vol.1','Sui Ishida',7.50,20,'en_stock',NULL,1,5),
(131,9781000131,2,'Tokyo Ghoul Vol.2','Sui Ishida',7.50,18,'en_stock',NULL,1,5),
(132,9781000132,3,'Tokyo Ghoul Vol.3','Sui Ishida',7.50,16,'en_stock',NULL,1,5),
(133,9781000133,4,'Tokyo Ghoul Vol.4','Sui Ishida',7.50,14,'en_stock',NULL,1,5),
(134,9781000134,5,'Tokyo Ghoul Vol.5','Sui Ishida',7.50,12,'en_stock',NULL,1,5),
(135,9781000135,6,'Tokyo Ghoul Vol.6','Sui Ishida',7.50,10,'en_stock',NULL,1,5),
(136,9781000136,7,'Tokyo Ghoul Vol.7','Sui Ishida',7.50,8,'en_stock',NULL,1,5),

-- Slam Dunk (Shueisha) ID 137..148 (12 volumes)
(137,9781000137,1,'Slam Dunk Vol.1','Takehiko Inoue',6.50,30,'en_stock',NULL,1,8),
(138,9781000138,2,'Slam Dunk Vol.2','Takehiko Inoue',6.50,28,'en_stock',NULL,1,8),
(139,9781000139,3,'Slam Dunk Vol.3','Takehiko Inoue',6.50,26,'en_stock',NULL,1,8),
(140,9781000140,4,'Slam Dunk Vol.4','Takehiko Inoue',6.50,24,'en_stock',NULL,1,8),
(141,9781000141,5,'Slam Dunk Vol.5','Takehiko Inoue',6.50,22,'en_stock',NULL,1,8),
(142,9781000142,6,'Slam Dunk Vol.6','Takehiko Inoue',6.50,20,'en_stock',NULL,1,8),
(143,9781000143,7,'Slam Dunk Vol.7','Takehiko Inoue',6.50,18,'en_stock',NULL,1,8),
(144,9781000144,8,'Slam Dunk Vol.8','Takehiko Inoue',6.50,16,'en_stock',NULL,1,8),
(145,9781000145,9,'Slam Dunk Vol.9','Takehiko Inoue',6.50,14,'en_stock',NULL,1,8),
(146,9781000146,10,'Slam Dunk Vol.10','Takehiko Inoue',6.50,12,'en_stock',NULL,1,8),
(147,9781000147,11,'Slam Dunk Vol.11','Takehiko Inoue',6.50,10,'en_stock',NULL,1,8),
(148,9781000148,12,'Slam Dunk Vol.12','Takehiko Inoue',6.50,8,'en_stock',NULL,1,8),

-- Pluto (Naoki Urasawa) ID 149..150 (2 volumes)
(149,9781000149,1,'Pluto Vol.1','Naoki Urasawa',8.50,12,'en_stock',NULL,3,2),
(150,9781000150,2,'Pluto Vol.2','Naoki Urasawa',8.50,10,'en_stock',NULL,3,2);


-- 9) Série (30) : on référence 30 volumes distincts (ID_série 1..30 -> map to volumes 1..30)
INSERT INTO serie (Id_serie, titre_s, nombre_de_volume, ID_volume) VALUES
(1,'One Piece',24,1),
(2,'Naruto',12,25),
(3,'Dragon Ball',9,37),
(4,'Bleach',10,46),
(5,'Berserk',12,56),
(6,'Death Note',12,68),
(7,'Attack on Titan',12,80),
(8,'JoJo''s Bizarre Adventure',10,92),
(9,'Hunter x Hunter',10,102),
(10,'Vagabond',5,112),
(11,'Bakuman',5,117),
(12,'Fullmetal Alchemist',8,122),
(13,'Tokyo Ghoul',7,130),
(14,'Slam Dunk',12,137),
(15,'One Piece (suite)',24,2),
(16,'Naruto (suite)',12,26),
(17,'Bleach (suite)',10,47),
(18,'Hunter x Hunter (suite)',10,103),
(19,'JoJo (suite)',10,93),
(20,'Berserk (suite)',12,57),
(21,'Death Note (suite)',12,69),
(22,'Attack on Titan (suite)',12,81),
(23,'Vagabond (suite)',5,113),
(24,'Dragon Ball (suite)',9,38),
(25,'Fullmetal Alchemist (suite)',8,123),
(26,'Tokyo Ghoul (suite)',7,131),
(27,'Slam Dunk (suite)',12,138),
(28,'One Piece (suite 3)',24,3),
(29,'Pluto',2,149),
(30,'Bakuman (suite)',5,118);

-- 10) Commandes (50)
-- Associer commandes à clients (C001..C030) et employer (1..5)
INSERT INTO commande (ID_comande, date_c, montant, mode_de_payement, statut, date_reception, ID_employer, ID_client) VALUES
(1,'2025-01-02',39.50,'CB','livrée','2025-01-05',2,'C001'),
(2,'2025-01-05',15.80,'Espece','livrée','2025-01-07',3,'C002'),
(3,'2025-01-08',23.60,'CB','livrée','2025-01-12',2,'C003'),
(4,'2025-01-10',7.90,'CB','en cours',NULL,4,'C004'),
(5,'2025-01-12',15.80,'CB','livrée','2025-01-15',5,'C005'),
(6,'2025-01-15',31.60,'CB','livrée','2025-01-20',2,'C006'),
(7,'2025-01-18',7.90,'Espece','annulée',NULL,3,'C007'),
(8,'2025-01-20',23.60,'CB','livrée','2025-01-25',4,'C008'),
(9,'2025-01-22',47.40,'CB','livrée','2025-01-26',2,'C009'),
(10,'2025-01-25',15.80,'CB','en cours',NULL,5,'C010'),
(11,'2025-01-28',23.60,'CB','livrée','2025-02-02',2,'C011'),
(12,'2025-02-01',7.90,'Espece','livrée','2025-02-03',3,'C012'),
(13,'2025-02-03',31.60,'CB','livrée','2025-02-08',4,'C013'),
(14,'2025-02-06',15.80,'CB','livrée','2025-02-10',5,'C014'),
(15,'2025-02-08',7.90,'CB','livrée','2025-02-12',2,'C015'),
(16,'2025-02-10',23.60,'Espece','livrée','2025-02-15',3,'C016'),
(17,'2025-02-12',39.50,'CB','en cours',NULL,4,'C017'),
(18,'2025-02-15',15.80,'CB','livrée','2025-02-20',5,'C018'),
(19,'2025-02-18',31.60,'CB','livrée','2025-02-23',2,'C019'),
(20,'2025-02-20',23.60,'Espece','livrée','2025-02-25',3,'C020'),
(21,'2025-02-22',7.90,'CB','livrée','2025-02-27',4,'C021'),
(22,'2025-02-24',47.40,'CB','livrée','2025-03-01',2,'C022'),
(23,'2025-02-26',15.80,'Espece','en cours',NULL,5,'C023'),
(24,'2025-02-28',31.60,'CB','livrée','2025-03-04',2,'C024'),
(25,'2025-03-02',23.60,'CB','livrée','2025-03-06',3,'C025'),
(26,'2025-03-04',7.90,'CB','livrée','2025-03-09',4,'C026'),
(27,'2025-03-06',15.80,'Espece','annulée',NULL,5,'C027'),
(28,'2025-03-08',39.50,'CB','livrée','2025-03-12',2,'C028'),
(29,'2025-03-10',23.60,'CB','livrée','2025-03-15',3,'C029'),
(30,'2025-03-12',31.60,'CB','livrée','2025-03-17',4,'C030'),
(31,'2025-03-14',15.80,'CB','livrée','2025-03-18',2,'C001'),
(32,'2025-03-16',7.90,'Espece','livrée','2025-03-19',3,'C002'),
(33,'2025-03-18',23.60,'CB','livrée','2025-03-22',4,'C003'),
(34,'2025-03-20',39.50,'CB','en cours',NULL,5,'C004'),
(35,'2025-03-22',15.80,'CB','livrée','2025-03-27',2,'C005'),
(36,'2025-03-24',31.60,'CB','livrée','2025-03-29',3,'C006'),
(37,'2025-03-26',23.60,'Espece','livrée','2025-03-31',4,'C007'),
(38,'2025-03-28',7.90,'CB','livrée','2025-04-02',5,'C008'),
(39,'2025-03-30',15.80,'CB','livrée','2025-04-04',2,'C009'),
(40,'2025-04-01',39.50,'CB','en cours',NULL,3,'C010'),
(41,'2025-04-03',23.60,'Espece','livrée','2025-04-08',4,'C011'),
(42,'2025-04-05',7.90,'CB','livrée','2025-04-09',5,'C012'),
(43,'2025-04-07',15.80,'CB','livrée','2025-04-11',2,'C013'),
(44,'2025-04-09',23.60,'Espece','livrée','2025-04-14',3,'C014'),
(45,'2025-04-11',31.60,'CB','livrée','2025-04-16',4,'C015'),
(46,'2025-04-13',7.90,'CB','livrée','2025-04-17',5,'C016'),
(47,'2025-04-15',15.80,'Espece','annulée',NULL,2,'C017'),
(48,'2025-04-17',39.50,'CB','livrée','2025-04-22',3,'C018'),
(49,'2025-04-19',23.60,'CB','livrée','2025-04-24',4,'C019'),
(50,'2025-04-21',31.60,'Espece','livrée','2025-04-26',5,'C020');


-- 11) Réapprovisionnement (10) across 5 fournisseurs; referencing volumes existing (we use volumes 101..110)
INSERT INTO reapprovisionnement (ID_fournisseur, ID_approvisionnement, Date_commande_f, Date_reception, ID_volume) VALUES
(1,1,'2025-01-10','2025-01-20',101),
(2,2,'2025-01-12','2025-01-22',102),
(3,3,'2025-01-15','2025-01-25',103),
(4,4,'2025-02-01','2025-02-11',104),
(5,5,'2025-02-05','2025-02-15',105),
(1,6,'2025-02-10','2025-02-20',106),
(2,7,'2025-02-14','2025-02-24',107),
(3,8,'2025-03-01','2025-03-11',108),
(4,9,'2025-03-05','2025-03-15',109),
(5,10,'2025-03-10','2025-03-20',110);

-- 12) Contient (50) : liaisons commande -> volume ; quantité indicate number of copies
-- (pour simplifier : 1 ligne par commande)
INSERT INTO contient (ID_volume, ID_commande, quantité) VALUES
(1,1,'2'),
(25,2,'1'),
(37,3,'3'),
(46,4,'1'),
(56,5,'2'),
(68,6,'4'),
(80,7,'1'),
(92,8,'2'),
(102,9,'5'),
(112,10,'1'),
(117,11,'2'),
(122,12,'1'),
(130,13,'2'),
(137,14,'1'),
(2,15,'1'),
(26,16,'2'),
(47,17,'2'),
(103,18,'1'),
(93,19,'3'),
(57,20,'1'),
(69,21,'1'),
(81,22,'2'),
(113,23,'1'),
(38,24,'2'),
(123,25,'1'),
(131,26,'2'),
(139,27,'1'),
(3,28,'1'),
(27,29,'1'),
(48,30,'1'),
(104,31,'2'),
(94,32,'1'),
(58,33,'2'),
(82,34,'1'),
(114,35,'1'),
(124,36,'2'),
(132,37,'1'),
(140,38,'1'),
(149,39,'1'),
(4,40,'2'),
(28,41,'1'),
(49,42,'1'),
(59,43,'1'),
(83,44,'2'),
(115,45,'1'),
(125,46,'2'),
(133,47,'1'),
(141,48,'1'),
(150,49,'1'),
(5,50,'1');

-- 13) a_pour_thème (quelques liaisons pour illustrer) 
INSERT INTO a_pour_theme (ID_volume, ID_theme) VALUES
(1,1),(2,1),(3,1),(4,2),(5,2),(6,7),(7,7),(8,6),(9,6),(10,3),
(11,3),(12,8),(13,9),(14,8),(15,1),(16,1),(17,5),(18,5),(19,6),(20,4),
(21,4),(22,2),(23,9),(24,9),(25,1),(26,2),(27,8),(28,1),(29,3),(30,6);

-- 14) Avis (10) referencing clients C001..C010
INSERT INTO Avis (ID_client, ID_avis, Note_client, Commentaire) VALUES
('C001',1,5,'Excellente boutique, personnel serviable.'),
('C002',2,4,'Bonne sélection de mangas.'),
('C003',3,5,'Livraison rapide et soignée.'),
('C004',4,4,'Prix corrects, stock variable.'),
('C005',5,5,'Très satisfait du service après-vente.'),
('C006',6,4,'Ambiance agréable en magasin.'),
('C007',7,5,'Kiné? non — avis pour la librairie :) Très bon suivi.'),
('C008',8,3,'Quelques ruptures de stock fréquentes.'),
('C009',9,5,'Personnel passionné et conseils pertinents.'),
('C010',10,4,'Large choix de tomes, un peu cher parfois.');

-- FIN du script d'insertion.

