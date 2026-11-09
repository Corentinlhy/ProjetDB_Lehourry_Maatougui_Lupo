
SELECT Riot_ID, tag_joueur 
FROM Compte_utilisateur 
ORDER BY Riot_ID ASC;

SELECT DISTINCT region_joueur 
FROM Compte_utilisateur;

SELECT Riot_ID, mail_joueur 
FROM Compte_utilisateur 
WHERE mail_joueur LIKE '%@gmail.com';

SELECT Nom_produit, date_lancement 
FROM Produit 
WHERE catégorie_produit IN ('Cosmétique', 'Bundle Esport');

SELECT identifiant_transaction, montant_payé, devise, horrodatage 
FROM Boutique 
WHERE horrodatage BETWEEN '2023-11-01' AND '2023-12-31';

SELECT devise, SUM(montant_payé) AS chiffre_affaires_total 
FROM Boutique 
GROUP BY devise;

SELECT categorie_probleme, COUNT(ID_ticket) as nombre_de_tickets 
FROM Support_client 
GROUP BY categorie_probleme 
HAVING COUNT(ID_ticket) > 2;

SELECT moyen_de_payement, AVG(montant_payé) as panier_moyen 
FROM Boutique 
GROUP BY moyen_de_payement;

SELECT region_joueur, MAX(solde_virtuel) as solde_maximum 
FROM Compte_utilisateur 
GROUP BY region_joueur;

SELECT identifiant_produit, MIN(montant_payé) as transaction_minimale 
FROM Boutique 
GROUP BY identifiant_produit;