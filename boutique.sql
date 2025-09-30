-- Table Client
CREATE TABLE Client (
    ID_client VARCHAR(50) PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(50),
    adresse VARCHAR(50),
    numero_de_tel VARCHAR(50)
);

-- Table Employer
CREATE TABLE Employer (
    ID_employer INT PRIMARY KEY,
    nom_e VARCHAR(50),
    prenom_e VARCHAR(50),
    poste VARCHAR(50),
    ID_employer_manager INT,
    FOREIGN KEY (ID_employer_manager) REFERENCES Employer(ID_employer)
);

-- Table Editeur
CREATE TABLE Editeur (
    ID_editeur INT PRIMARY KEY,
    nom_editeur VARCHAR(50)
);

-- Table Genre
CREATE TABLE Genre (
    ID_genre INT PRIMARY KEY,
    nom_genre VARCHAR(50)
);

-- Table Fournisseur
CREATE TABLE Fournisseur (
    ID_fournisseur INT PRIMARY KEY,
    nom_f VARCHAR(50),
    coordonnees VARCHAR(50)
);

-- Table Promotion
CREATE TABLE Promotion (
    ID_promotion INT PRIMARY KEY,
    promotion_ INT,
    promotion_montant_ DECIMAL(15,2)
);

-- Table Avis
CREATE TABLE Avis (
    ID_avis INT PRIMARY KEY,
    note_client INT,
    commentaire VARCHAR(50),
    ID_client VARCHAR(50),
    FOREIGN KEY (ID_client) REFERENCES Client(ID_client)
);

-- Table Theme
CREATE TABLE Theme (
    ID_theme INT PRIMARY KEY,
    nom_t VARCHAR(50)
);

-- Table Manga
CREATE TABLE Manga (
    ID_volume INT PRIMARY KEY,
    ISBN INT,
    num_volume INT,
    titre_m VARCHAR(50),
    auteur VARCHAR(50),
    prix DECIMAL(15,2),
    quantite INT,
    statut_stock VARCHAR(50),
    ID_promotion INT NULL,
    ID_editeur INT,
    ID_genre INT,
    FOREIGN KEY (ID_promotion) REFERENCES Promotion(ID_promotion),
    FOREIGN KEY (ID_editeur) REFERENCES Editeur(ID_editeur),
    FOREIGN KEY (ID_genre) REFERENCES Genre(ID_genre)
);

-- Table Serie
CREATE TABLE Serie (
    ID_serie INT PRIMARY KEY,
    titre_s VARCHAR(50),
    nombre_de_volume INT,
    ID_volume INT,
    FOREIGN KEY (ID_volume) REFERENCES Manga(ID_volume)
);

-- Table Commande
CREATE TABLE Commande (
    ID_commande INT PRIMARY KEY,
    date_c DATE,
    montant DECIMAL(15,2),
    mode_de_payement VARCHAR(50),
    statut VARCHAR(50),
    date_reception DATE,
    ID_employer INT,
    ID_client VARCHAR(50),
    FOREIGN KEY (ID_employer) REFERENCES Employer(ID_employer),
    FOREIGN KEY (ID_client) REFERENCES Client(ID_client)
);

-- Table Reapprovisionnement
CREATE TABLE Reapprovisionnement (
    ID_approvisionnement INT PRIMARY KEY,
    date_commande_f DATE,
    date_reception VARCHAR(50),
    ID_fournisseur INT,
    ID_volume INT,
    FOREIGN KEY (ID_fournisseur) REFERENCES Fournisseur(ID_fournisseur),
    FOREIGN KEY (ID_volume) REFERENCES Manga(ID_volume)
);

-- Table Contient (relation n-n Commande <-> Manga)
CREATE TABLE Contient (
    ID_volume INT,
    ID_commande INT,
    quantite VARCHAR(50),
    PRIMARY KEY (ID_volume, ID_commande),
    FOREIGN KEY (ID_volume) REFERENCES Manga(ID_volume),
    FOREIGN KEY (ID_commande) REFERENCES Commande(ID_commande)
);

-- Table A_pour_theme (relation n-n Manga <-> Theme)
CREATE TABLE A_pour_theme (
    ID_volume INT,
    ID_theme INT,
    PRIMARY KEY (ID_volume, ID_theme),
    FOREIGN KEY (ID_volume) REFERENCES Manga(ID_volume),
    FOREIGN KEY (ID_theme) REFERENCES Theme(ID_theme)
);
