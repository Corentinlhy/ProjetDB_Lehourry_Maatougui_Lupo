
CREATE TABLE Produit(
   identifiant_produit VARCHAR(5),
   Nom_produit VARCHAR(50) NOT NULL,
   catégorie_produit VARCHAR(20) NOT NULL,
   date_lancement DATE,
   PRIMARY KEY(identifiant_produit),
   UNIQUE(Nom_produit)
);

CREATE TABLE Boutique(
   identifiant_transaction BIGINT,
   montant_payé DECIMAL(10,2) NOT NULL,
   devise VARCHAR(3) NOT NULL,
   moyen_de_payement VARCHAR(20) NOT NULL,
   horrodatage DATE NOT NULL,
   identifiant_produit VARCHAR(5) NOT NULL,
   PRIMARY KEY(identifiant_transaction),
   FOREIGN KEY(identifiant_produit) REFERENCES Produit(identifiant_produit) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Equipe_esport_partenaire(
   ID_Equipe INT,
   nom_equipe VARCHAR(50) NOT NULL,
   acronyme_equipe VARCHAR(5) NOT NULL,
   identifiant_ligue_pro INT NOT NULL,
   PRIMARY KEY(ID_Equipe),
   UNIQUE(nom_equipe)
);

CREATE TABLE infrastructure_serveur(
   ID_serveur INT,
   IP_serveur VARCHAR(45) NOT NULL,
   PRIMARY KEY(ID_serveur),
   UNIQUE(IP_serveur)
);

CREATE TABLE Compte_utilisateur(
   Riot_ID VARCHAR(50),
   tag_joueur VARCHAR(5) NOT NULL,
   id_identifiantjoueur INT NOT NULL,
   mail_joueur VARCHAR(50),
   mdp_joueur VARCHAR(50),
   date_creation DATE,
   statut_2FA BOOLEAN,
   region_joueur VARCHAR(50),
   solde_virtuel INT,
   statut VARCHAR(15) NOT NULL,
   ID_Equipe INT,
   ID_serveur INT,
   identifiant_transaction BIGINT NOT NULL,
   PRIMARY KEY(Riot_ID),
   FOREIGN KEY(ID_Equipe) REFERENCES Equipe_esport_partenaire(ID_Equipe) ON DELETE SET NULL ON UPDATE CASCADE,
   FOREIGN KEY(ID_serveur) REFERENCES infrastructure_serveur(ID_serveur) ON DELETE SET NULL ON UPDATE CASCADE,
   FOREIGN KEY(identifiant_transaction) REFERENCES Boutique(identifiant_transaction) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Support_client(
   ID_ticket INT,
   categorie_probleme VARCHAR(30) NOT NULL,
   statut_ticket VARCHAR(15) NOT NULL,
   description_du_probleme VARCHAR(1000) NOT NULL,
   Riot_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_ticket),
   FOREIGN KEY(Riot_ID) REFERENCES Compte_utilisateur(Riot_ID) ON DELETE CASCADE ON UPDATE CASCADE
);