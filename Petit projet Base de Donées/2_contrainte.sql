
ALTER TABLE Boutique
ADD CONSTRAINT chk_montant_paye CHECK (montant_payé > 0);

ALTER TABLE Boutique
ADD CONSTRAINT chk_devise CHECK (devise IN ('EUR', 'USD', 'CAD', 'CHF', 'GBP'));

ALTER TABLE Compte_utilisateur
ADD CONSTRAINT chk_solde_virtuel CHECK (solde_virtuel >= 0);

ALTER TABLE Compte_utilisateur
ADD CONSTRAINT chk_mail_format CHECK (mail_joueur LIKE '%@%.%');

ALTER TABLE Compte_utilisateur
ADD CONSTRAINT chk_statut_compte CHECK (statut IN ('Actif', 'Inactif', 'Banni', 'Suspendu'));

ALTER TABLE Support_client
ADD CONSTRAINT chk_statut_ticket CHECK (statut_ticket IN ('Ouvert', 'En cours', 'Résolu', 'Fermé'));

ALTER TABLE Compte_utilisateur
ADD CONSTRAINT chk_tag_joueur CHECK (tag_joueur LIKE '#%');