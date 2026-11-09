Etape 1 MCD : 
<img width="933" height="540" alt="image" src="https://github.com/user-attachments/assets/a7a77f13-3c98-4f2c-9db3-30e7eefd8345" />




Etape MLD :


Produit = (identifiant\_produit VARCHAR(5), Nom\_produit VARCHAR(50), catégorie\_produit VARCHAR(20), date\_lancement DATE);

Boutique = (identifiant\_transaction BIGINT, montant\_payé DECIMAL(10,2), devise VARCHAR(3), moyen\_de\_payement VARCHAR(20), horrodatage DATE, \_Riot\_ID INT, \_identifiant\_produit INT, #identifiant\_produit);

Equipe\_esport\_partenaire = (ID\_Equipe INT, nom\_equipe VARCHAR(50), acronyme\_equipe VARCHAR(5), identifiant\_ligue\_pro INT);

infrastructure\_serveur = (ID\_serveur INT, IP\_serveur VARCHAR(45));

Compte\_utilisateur = (Riot\_ID VARCHAR(50), tag\_joueur VARCHAR(5), id\_identifiant\_joueur\_ INT, mail\_joueur VARCHAR(50), mdp\_joueur VARCHAR(50), date\_creation DATE, 2FA BOOLEAN, region\_joueur VARCHAR(50), solde\_virtuel INT, statut VARCHAR(15), #ID\_Equipe\*, #ID\_serveur\*, #identifiant\_transaction);

Support\_client = (ID\_ticket INT, categorie\_probleme VARCHAR(30), statut\_ticket VARCHAR(15), description\_du\_probleme VARCHAR(1000), \_Riot\_ID VARCHAR(50), #Riot\_ID);





Etape 2 :





II. Prompt d'insertion des données (Génération IA)



--Pour générer un nombre conséquent de données cohérentes (Étape 4)\[cite: 3], le prompt suivant a été utilisé auprès d'une IA générative :--



**> Génère un script SQL complet nommé `3\_insertion.sql` contenant des requêtes `INSERT INTO` pour remplir une base de données MySQL de gestion e-sport. La base contient 6 tables. Tu dois générer au moins 10 à 20 lignes par table.**

**>**

**> Voici la structure (MLD) des tables : \[Insertion du MLD ci-dessus].**

**>** 

**> Contraintes à respecter scrupuleusement :**

**> 1. L'ordre d'insertion doit respecter les clés étrangères : Produit, Equipe, infrastructure\_serveur, puis Boutique, Compte\_utilisateur, et Support\_client.**

**> 2. Le `montant\_payé` doit être > 0. La `devise` doit être dans ('EUR', 'USD', 'CAD', 'CHF', 'GBP'). Le `solde\_virtuel` >= 0.**

**> 3. Le `mail\_joueur` doit contenir "@" et ".". Le `tag\_joueur` commence par "#".**

**> 4. Le `statut` est parmi ('Actif', 'Inactif', 'Banni', 'Suspendu'). Le `statut\_ticket` parmi ('Ouvert', 'En cours', 'Résolu', 'Fermé').**

**> 5. Données réalistes univers gaming/e-sport.**



**---**





Etape 3 :




III. Scénario d'utilisation


Rôle défini :Analyste Marketing et Monétisation chez l'éditeur du jeu vidéo.

Contexte d'utilisation : L'entreprise souhaite lancer une nouvelle campagne promotionnelle ciblée pour la saison e-sport à venir et optimiser les revenus de sa boutique en ligne. L'analyste a besoin de comprendre le comportement d'achat des joueurs, l'influence des équipes partenaires sur ces achats, et de s'assurer que les problèmes de paiement sont vite résolus.

Données extraites :

&#x20;   Liste des emails et pseudos (Riot\_ID) des joueurs actifs, filtrée par région et équipe e-sport soutenue (pour des offres ciblées).

&#x20;   Statistiques financières de la boutique (CA par devise, montants moyens selon le moyen de paiement).

&#x20;   Historique croisé des achats : identification des produits best-sellers par profil de joueur.

&#x20;   Détail des tickets de support ouverts avec l'identifiant du joueur pour intervention technique.






Etape 4 :





IV. Étude du meilleur plan d'exécution



Requête étudiée :

« Obtenir le Riot\_ID et le mail des joueurs de la région 'EUW' appartenant à l'équipe 'Karmine Corp'. »



Code SQL :

sql : 

SELECT C.Riot\_ID, C.mail\_joueur

FROM Compte\_utilisateur C

JOIN Equipe\_esport\_partenaire E ON C.ID\_Equipe = E.ID\_Equipe

WHERE C.region\_joueur = 'EUW' AND E.nom\_equipe = 'Karmine Corp';









graph 1 TD
<img width="565" height="529" alt="image" src="https://github.com/user-attachments/assets/ca4fdc7f-0c4b-4991-ab2d-a03fe77fae02" />







graph 2 TD

<img width="574" height="562" alt="image" src="https://github.com/user-attachments/assets/b98b6aaf-5f0e-4cbd-a2e9-b7731442607a" />
