SET FOREIGN_KEY_CHECKS = 0;
CREATE DATABASE IF NOT EXISTS manga_shop;
USE manga_shop;

CREATE TABLE `Client` (
  `ID_client` VARCHAR(50) PRIMARY KEY,
  `nom` VARCHAR(50),
  `prenom` VARCHAR(50),
  `email` VARCHAR(50),
  `adresse` VARCHAR(50),
  `numero_de_tel` VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE `Employer` (
  `ID_employer` INT PRIMARY KEY,
  `nom_e` VARCHAR(50),
  `prenom_e` VARCHAR(50),
  `poste` VARCHAR(50),
  `ID_employer_manager` INT,
  CONSTRAINT `fk_employer_manager` FOREIGN KEY (`ID_employer_manager`) REFERENCES `Employer`(`ID_employer`)
) ENGINE=InnoDB;

CREATE TABLE `Editeur` (
  `ID_editeur` INT PRIMARY KEY,
  `nom_editeur` VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE `Genre` (
  `ID_genre` INT PRIMARY KEY,
  `nom_genre` VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE `Fournisseur` (
  `ID_fournisseur` INT PRIMARY KEY,
  `nom_f` VARCHAR(50),
  `coordonnees` VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE `Promotion` (
  `ID_promotion` INT PRIMARY KEY,
  `promotion_` INT,
  `promotion_montant_` DECIMAL(15,2)
) ENGINE=InnoDB;

CREATE TABLE `Avis` (
  `ID_avis` INT PRIMARY KEY,
  `note_client` INT,
  `commentaire` VARCHAR(500),
  `ID_client` VARCHAR(50),
  CONSTRAINT `fk_avis_client` FOREIGN KEY (`ID_client`) REFERENCES `Client`(`ID_client`)
) ENGINE=InnoDB;

CREATE TABLE `Theme` (
  `ID_theme` INT PRIMARY KEY,
  `nom_t` VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE `Manga` (
  `ID_volume` INT PRIMARY KEY,
  `ISBN` BIGINT,
  `num_volume` INT,
  `titre_m` VARCHAR(50),
  `auteur` VARCHAR(50),
  `prix` DECIMAL(15,2),
  `quantite` INT,
  `statut_stock` VARCHAR(50),
  `ID_promotion` INT,
  `ID_editeur` INT,
  `ID_genre` INT,
  CONSTRAINT `fk_manga_promotion` FOREIGN KEY (`ID_promotion`) REFERENCES `Promotion`(`ID_promotion`),
  CONSTRAINT `fk_manga_editeur` FOREIGN KEY (`ID_editeur`) REFERENCES `Editeur`(`ID_editeur`),
  CONSTRAINT `fk_manga_genre` FOREIGN KEY (`ID_genre`) REFERENCES `Genre`(`ID_genre`)
) ENGINE=InnoDB;

CREATE TABLE `Serie` (
  `ID_serie` INT PRIMARY KEY,
  `titre_s` VARCHAR(50),
  `nombre_de_volume` INT,
  `ID_volume` INT,
  CONSTRAINT `fk_serie_volume` FOREIGN KEY (`ID_volume`) REFERENCES `Manga`(`ID_volume`)
) ENGINE=InnoDB;

CREATE TABLE `Commande` (
  `ID_commande` INT PRIMARY KEY,
  `date_c` DATE,
  `montant` DECIMAL(15,2),
  `mode_de_payement` VARCHAR(50),
  `statut` VARCHAR(50),
  `date_reception` DATE,
  `ID_employer` INT,
  `ID_client` VARCHAR(50),
  CONSTRAINT `fk_commande_employer` FOREIGN KEY (`ID_employer`) REFERENCES `Employer`(`ID_employer`),
  CONSTRAINT `fk_commande_client` FOREIGN KEY (`ID_client`) REFERENCES `Client`(`ID_client`)
) ENGINE=InnoDB;

CREATE TABLE `Reapprovisionnement` (
  `ID_approvisionnement` INT PRIMARY KEY,
  `Date_commande_f` DATE,
  `Date_reception` DATE,
  `ID_fournisseur` INT,
  `ID_volume` INT,
  CONSTRAINT `fk_reappro_fournisseur` FOREIGN KEY (`ID_fournisseur`) REFERENCES `Fournisseur`(`ID_fournisseur`),
  CONSTRAINT `fk_reappro_volume` FOREIGN KEY (`ID_volume`) REFERENCES `Manga`(`ID_volume`)
) ENGINE=InnoDB;

CREATE TABLE `Contient` (
  `ID_volume` INT,
  `ID_commande` INT,
  `quantite` INT,
  PRIMARY KEY (`ID_volume`,`ID_commande`),
  CONSTRAINT `fk_contient_volume` FOREIGN KEY (`ID_volume`) REFERENCES `Manga`(`ID_volume`),
  CONSTRAINT `fk_contient_commande` FOREIGN KEY (`ID_commande`) REFERENCES `Commande`(`ID_commande`)
) ENGINE=InnoDB;

CREATE TABLE `A_pour_theme` (
  `ID_volume` INT,
  `ID_theme` INT,
  PRIMARY KEY (`ID_volume`,`ID_theme`),
  CONSTRAINT `fk_a_theme_volume` FOREIGN KEY (`ID_volume`) REFERENCES `Manga`(`ID_volume`),
  CONSTRAINT `fk_a_theme_theme` FOREIGN KEY (`ID_theme`) REFERENCES `Theme`(`ID_theme`)
) ENGINE=InnoDB;

SET FOREIGN_KEY_CHECKS = 1;
