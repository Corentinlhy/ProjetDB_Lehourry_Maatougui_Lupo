
INSERT INTO Produit (identifiant_produit, Nom_produit, catégorie_produit, date_lancement) VALUES
('P01', 'Skin Vandal Prime', 'Cosmétique', '2020-06-02'),
('P02', 'Passe de combat S7', 'Passe', '2023-08-15'),
('P03', 'Pack Champions 2023', 'Bundle', '2023-08-01'),
('P04', 'Skin Phantom Oni', 'Cosmétique', '2021-03-10'),
('P05', 'Couteau Papillon', 'Arme Mêlée', '2022-11-20'),
('P06', 'Jeton Changement Nom', 'Utilitaire', '2019-10-01'),
('P07', 'Skin Operator Dragon', 'Cosmétique', '2020-07-09'),
('P08', 'Carte Joueur KC', 'Accessoire', '2024-01-15'),
('P09', 'Spray Animé Poro', 'Accessoire', '2021-12-20'),
('P10', 'Pack de 1000 VP', 'Monnaie', '2019-10-01');

INSERT INTO Equipe_esport_partenaire (ID_Equipe, nom_equipe, acronyme_equipe, identifiant_ligue_pro) VALUES
(1, 'Karmine Corp', 'KC', 101),
(2, 'Fnatic', 'FNC', 101),
(3, 'T1', 'T1', 102),
(4, 'Team Liquid', 'TL', 103),
(5, 'Sentinels', 'SEN', 103),
(6, 'Paper Rex', 'PRX', 104),
(7, 'Natus Vincere', 'NAVI', 101),
(8, 'LOUD', 'LOUD', 103),
(9, 'DRX', 'DRX', 104),
(10, 'G2 Esports', 'G2', 103);

INSERT INTO infrastructure_serveur (ID_serveur, IP_serveur) VALUES
(1, '104.160.141.3'), -- Paris (EUW)
(2, '104.160.142.5'), -- Francfort (EUW)
(3, '104.160.131.1'), -- Chicago (NA)
(4, '104.160.132.8'), -- Texas (NA)
(5, '104.160.152.3'), -- Séoul (KR)
(6, '104.160.155.9'), -- Tokyo (AP)
(7, '104.160.161.4'), -- São Paulo (BR)
(8, '104.160.145.2'), -- Londres (EUW)
(9, '104.160.135.6'), -- Virginie (NA)
(10, '104.160.158.1'); -- Sydney (OCE)

INSERT INTO Boutique (identifiant_transaction, montant_payé, devise, moyen_de_payement, horrodatage, identifiant_produit) VALUES
(1001, 19.99, 'EUR', 'Carte Bancaire', '2023-11-01', 'P01'),
(1002, 9.99, 'USD', 'PayPal', '2023-11-05', 'P02'),
(1003, 59.99, 'EUR', 'Carte Bancaire', '2023-11-06', 'P03'),
(1004, 15.00, 'CAD', 'Google Pay', '2023-12-10', 'P04'),
(1005, 35.50, 'CHF', 'Carte Bancaire', '2024-01-02', 'P05'),
(1006, 4.99, 'GBP', 'PayPal', '2024-01-15', 'P06'),
(1007, 25.00, 'EUR', 'Apple Pay', '2024-02-20', 'P07'),
(1008, 2.99, 'EUR', 'Carte Bancaire', '2024-03-05', 'P08'),
(1009, 1.99, 'USD', 'PayPal', '2024-03-10', 'P09'),
(1010, 9.99, 'EUR', 'Carte Bancaire', '2024-03-15', 'P10'),
(1011, 59.99, 'USD', 'PayPal', '2024-03-16', 'P03'),
(1012, 19.99, 'CAD', 'Carte Bancaire', '2024-03-17', 'P01');


INSERT INTO Compte_utilisateur (Riot_ID, tag_joueur, id_identifiantjoueur, mail_joueur, mdp_joueur, date_creation, statut_2FA, region_joueur, solde_virtuel, statut, ID_Equipe, ID_serveur, identifiant_transaction) VALUES
('Faker', '#KR1', 9001, 'faker@t1.gg', 'hash1', '2015-01-01', TRUE, 'KR', 5500, 'Actif', 3, 5, 1003),
('Kameto', '#KC', 9002, 'kamel@kc.fr', 'hash2', '2020-05-12', TRUE, 'EUW', 1200, 'Actif', 1, 1, 1001),
('Boaster', '#FNC', 9003, 'boaster@fnatic.com', 'hash3', '2018-03-22', TRUE, 'EUW', 450, 'Actif', 2, 8, 1007),
('TenZ', '#NA1', 9004, 'tenz@sen.com', 'hash4', '2019-11-05', TRUE, 'NA', 8900, 'Actif', 5, 3, 1005),
('Aspas', '#BR1', 9005, 'aspas@loud.br', 'hash5', '2021-02-14', FALSE, 'BR', 200, 'Actif', 8, 7, 1011),
('TrollGamer123', '#6969', 9006, 'troll@gmail.com', 'hash6', '2023-01-10', FALSE, 'NA', 0, 'Banni', NULL, 4, 1002),
('SmurfAccount', '#0000', 9007, 'smurf@yopmail.com', 'hash7', '2024-01-05', FALSE, 'EUW', 10, 'Suspendu', NULL, 2, 1006),
('ScreaM', '#HS', 9008, 'scream@pro.be', 'hash8', '2016-08-30', TRUE, 'EUW', 1500, 'Actif', 1, 1, 1004),
('F0rsakeN', '#PRX', 9009, 'forsaken@prx.sg', 'hash9', '2020-09-15', TRUE, 'AP', 3200, 'Actif', 6, 6, 1009),
('CasualPlayer', '#FR', 9010, 'casual@orange.fr', 'hash10', '2022-04-18', FALSE, 'EUW', 50, 'Inactif', NULL, 1, 1008);


INSERT INTO Support_client (ID_ticket, categorie_probleme, statut_ticket, description_du_probleme, Riot_ID) VALUES
(201, 'Paiement échoué', 'Résolu', 'Achat du passe de combat débité mais non reçu en jeu.', 'Kameto'),
(202, 'Appel de ban', 'Ouvert', 'Je ne comprends pas mon bannissement permanent.', 'TrollGamer123'),
(203, 'Bug technique', 'En cours', 'Le jeu plante lors de la sélection du skin.', 'Faker'),
(204, 'Vol de compte', 'En cours', 'Quelqu un s est connecté depuis la Russie.', 'SmurfAccount'),
(205, 'Ping élevé', 'Résolu', 'J ai 150 de ping sur le serveur Francfort depuis hier.', 'Boaster'),
(206, 'Changement pseudo', 'Fermé', 'Je souhaite changer mon Riot ID car j ai fait une faute.', 'CasualPlayer'),
(207, 'Signaler un joueur', 'Résolu', 'Joueur toxique dans ma partie classée (logs joints).', 'TenZ'),
(208, 'Remboursement', 'Ouvert', 'Achat accidentel du skin Vandal, je veux annuler.', 'Aspas');