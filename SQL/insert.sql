-- Insérer des utilisateurs
INSERT INTO utilisateur (nom, email, mot_de_passe) VALUES
('Alice Dupont', 'alice.dupont@email.com', 'motdepasse123'),
('Bob Martin', 'bob.martin@email.com', 'securepass'),
('Charlie Durand', 'charlie.durand@email.com', 'charlie123');

-- Insérer des jeux
INSERT INTO jeu (nom, description, duree, nb_joueurs_min, nb_joueurs_max, quantite_total, quantite_disponible) VALUES
('Catan', 'Jeu de gestion et de stratégie sur une île en expansion.', 90, 3, 4, 5, 3),
('Dixit', 'Jeu de cartes et d\'imagination avec de magnifiques illustrations.', 30, 3, 6, 4, 2),
('7 Wonders', 'Jeu de civilisation où vous développez votre cité.', 45, 2, 7, 6, 5),
('Azul', 'Jeu de stratégie et de placement de tuiles.', 40, 2, 4, 3, 2),
('Time’s Up!', 'Jeu d’ambiance où l’on doit faire deviner des personnages.', 30, 4, 12, 6, 6);

-- Insérer des catégories
INSERT INTO categorie (nom) VALUES
('Stratégie'),
('Familial'),
('Ambiance'),
('Cartes');

-- Insérer des mécaniques
INSERT INTO mecanique (nom) VALUES
('Gestion de ressources'),
('Bluff'),
('Draft'),
('Déduction'),
('Placement de tuiles');

-- Associer les jeux aux catégories
INSERT INTO jeu_categorie (id_jeu, id_categorie) VALUES
(1, 1), -- Catan -> Stratégie
(2, 2), -- Dixit -> Familial
(3, 1), -- 7 Wonders -> Stratégie
(4, 1), -- Azul -> Stratégie
(5, 3); -- Time’s Up! -> Ambiance

-- Associer les jeux aux mécaniques
INSERT INTO jeu_mecanique (id_jeu, id_mecanique) VALUES
(1, 1), -- Catan -> Gestion de ressources
(2, 4), -- Dixit -> Déduction
(3, 3), -- 7 Wonders -> Draft
(4, 5), -- Azul -> Placement de tuiles
(5, 2); -- Time’s Up! -> Bluff

-- Ajouter des favoris
INSERT INTO jeu_favori (id_utilisateur, id_jeu, date_ajout) VALUES
(1, 1, '2025-03-01'), -- Alice aime Catan
(2, 3, '2025-03-02'), -- Bob aime 7 Wonders
(3, 2, '2025-03-03'); -- Charlie aime Dixit

-- Ajouter des notes
INSERT INTO note (id_utilisateur, id_jeu, valeur, commentaire) VALUES
(1, 1, 5, 'Un excellent jeu de stratégie !'),
(2, 2, 4, 'Très beau jeu, mais il faut être inspiré.'),
(3, 3, 5, 'Rapide et intense, j\'adore.');

-- Ajouter des locations
INSERT INTO location (id_utilisateur, id_jeu, date_debut, date_fin) VALUES
(1, 1, '2025-03-01', '2025-03-07'), -- Alice loue Catan
(2, 2, '2025-03-02', NULL), -- Bob loue Dixit (encore en cours)
(3, 3, '2025-03-03', '2025-03-08'); -- Charlie loue 7 Wonders