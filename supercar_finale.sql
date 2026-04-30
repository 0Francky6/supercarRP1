-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 30 avr. 2026 à 06:06
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `log_login`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `log_login` (IN `user` VARCHAR(255))   BEGIN
  INSERT INTO log_login (username, login_time) 
  VALUES (user, CURRENT_TIMESTAMP);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234'),
(2, 'kyffr', '27082003');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `messages` text,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`idcontact`, `nom`, `adresse`, `email`, `messages`) VALUES
(1, 'Gerome', 'Ebene', 'rafalifrancky03@gmal.com', 'est ce que je pourrais avoir plus de détails sur le ford Ft-150\r\n'),
(7, 'RABIALAHY', 'Moka', 'Joary@gmail.com', 'bonjour, est ce vous êtes disponibles 7j/7'),
(13, 'Francky', 'Highlands', 'franckymarcel06@gmail.com', 'juste  pour tester si tout fonctionne bien'),
(14, 'Mireille', 'Paris', 'Mireille@gmail.com', 'bonjour, votre page c\'est vraiment cool'),
(17, 'Francky', 'Beau Bassin', 'Marcel@gmail.comdf', 'TEST FINAL si tout fonctionne bien'),
(19, 'Carmen', 'Moka', 'shumshum@gmail.com', 'Bonjour'),
(20, 'Marcel', 'Plaisance', 'francky@gmail.com', 'bonjour,,,');

-- --------------------------------------------------------

--
-- Structure de la table `demandes_essai`
--

DROP TABLE IF EXISTS `demandes_essai`;
CREATE TABLE IF NOT EXISTS `demandes_essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `voiture` varchar(100) DEFAULT NULL,
  `date_essai` date DEFAULT NULL,
  `date_demande` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `heure` time DEFAULT NULL,
  `statut` varchar(20) DEFAULT 'en cours',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `demandes_essai`
--

INSERT INTO `demandes_essai` (`id`, `nom`, `prenom`, `email`, `voiture`, `date_essai`, `date_demande`, `heure`, `statut`) VALUES
(1, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 05:46:20', NULL, 'approuvé'),
(8, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Ranger Raptor', '2025-07-26', '2025-04-10 06:59:24', NULL, 'refusé'),
(9, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Magnite', '2025-05-22', '2025-04-10 07:29:50', '00:00:00', 'refusé'),
(10, 'Anthony', 'Marcel', 'rafalifrancky03@gmail.com', 'Magnite', '2025-05-22', '2025-04-10 07:32:23', '00:00:00', 'en cours'),
(33, 'Marcel', 'Francky', 'francky@gmail.com', 'RAV4', '2026-05-01', '2026-04-30 05:58:52', '11:45:00', 'approuvé'),
(14, 'RABIALAHY', 'Leka', 'Joary@gmail.com', 'Ranger Raptor', '2025-04-19', '2025-04-10 07:41:08', '08:30:00', 'supprimé'),
(15, 'Francky', 'Anthony', 'rafalifrancky03@gmail.com', 'F-150', '2025-12-18', '2025-10-17 06:30:58', '13:30:00', 'en cours'),
(16, 'Andrianandrasana', 'Francis Aimé marcel', 'Francis@gmail.com', 'AMG GT', '2025-10-31', '2025-10-28 04:51:03', '16:30:00', 'en cours'),
(32, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'RAV4', '2026-04-26', '2026-04-13 06:16:11', '16:30:00', 'en cours'),
(31, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'AMG GT', '2026-04-26', '2026-04-13 06:15:44', '08:30:00', 'en cours'),
(30, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'Classe G', '2026-04-14', '2026-04-13 06:15:00', '08:00:00', 'en cours'),
(29, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'Classe G', '2026-04-14', '2026-04-13 06:14:34', '08:00:00', 'en cours'),
(28, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'Maybach', '2026-04-26', '2026-04-13 06:09:31', '10:30:00', 'en cours'),
(27, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'RAV4', '2026-04-14', '2026-04-13 06:07:58', '10:00:00', 'en cours'),
(26, 'RAFALIMANANTSOA', 'Francky Anthony Marcel', 'rafalifrancky03@gmail.com', 'RAV4', '2026-04-14', '2026-04-13 06:07:05', '10:00:00', 'approuvé');

--
-- Déclencheurs `demandes_essai`
--
DROP TRIGGER IF EXISTS `after_demande_insert`;
DELIMITER $$
CREATE TRIGGER `after_demande_insert` AFTER INSERT ON `demandes_essai` FOR EACH ROW BEGIN
  UPDATE voiture
  SET nb_demandes = nb_demandes + 1
  WHERE modele = NEW.voiture;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `historique_voiture`
--

DROP TABLE IF EXISTS `historique_voiture`;
CREATE TABLE IF NOT EXISTS `historique_voiture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voiture_id` int DEFAULT NULL,
  `ancien_marque` varchar(100) DEFAULT NULL,
  `ancien_modele` varchar(100) DEFAULT NULL,
  `ancien_prix` decimal(10,2) DEFAULT NULL,
  `ancienne_description` varchar(500) DEFAULT NULL,
  `nouveau_marque` varchar(100) DEFAULT NULL,
  `nouveau_modele` varchar(100) DEFAULT NULL,
  `nouveau_prix` decimal(10,2) DEFAULT NULL,
  `nouvelle_description` varchar(500) DEFAULT NULL,
  `modifie_le` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `historique_voiture`
--

INSERT INTO `historique_voiture` (`id`, `voiture_id`, `ancien_marque`, `ancien_modele`, `ancien_prix`, `ancienne_description`, `nouveau_marque`, `nouveau_modele`, `nouveau_prix`, `nouvelle_description`, `modifie_le`) VALUES
(1, 1, 'Ford', 'Ford Ranger Raptor', 66000.00, 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.', 'Ford', 'Ford Ranger Raptor', 65500.00, 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.', '2026-04-13 05:55:00'),
(2, 1, 'Ford', 'Ford Ranger Raptor', 65500.00, 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.', 'Ford', 'Ford Ranger Raptor', 65000.00, 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.', '2026-04-13 05:55:30'),
(3, 9, 'Toyota', 'RAV4', 36100.00, 'La Toyota RAV4 est un SUV hybride combinant puissance et efficacité énergétique. Son design audacieux et son intérieur spacieux en font un choix idéal pour toutes les aventures.', 'Toyota', 'RAV4', 36000.00, 'La Toyota RAV4 est un SUV hybride combinant puissance et efficacité énergétique. Son design audacieux et son intérieur spacieux en font un choix idéal pour toutes les aventures.', '2026-04-13 05:57:15'),
(4, 7, 'Mercedes', 'Mercedes class G', 163000.00, 'La Mercedes Classe G est une légende de l\'automobile, alliant robustesse, luxe et capacités tout-terrain exceptionnelles.', 'Mercedes', 'Mercedes class G', 160000.00, 'La Mercedes Classe G est une légende de l\'automobile, alliant robustesse, luxe et capacités tout-terrain exceptionnelles.', '2026-04-20 10:49:11'),
(5, 10, 'Toyota', 'Corolla', 29300.00, 'La Toyota Corolla est une berline économique et fiable. Elle offre un excellent rendement énergétique, un confort moderne et des technologies avancées pour une conduite agréable.', 'Toyota', 'Corolla', 29000.00, 'La Toyota Corolla est une berline économique et fiable. Elle offre un excellent rendement énergétique, un confort moderne et des technologies avancées pour une conduite agréable.', '2026-04-30 06:01:08');

-- --------------------------------------------------------

--
-- Structure de la table `log_login`
--

DROP TABLE IF EXISTS `log_login`;
CREATE TABLE IF NOT EXISTS `log_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `log_login`
--

INSERT INTO `log_login` (`id`, `username`, `login_time`) VALUES
(1, 'admin', '2026-04-13 06:41:16'),
(2, 'admin', '2026-04-20 10:48:14'),
(3, 'admin', '2026-04-30 06:00:10');

-- --------------------------------------------------------

--
-- Structure de la table `service_car`
--

DROP TABLE IF EXISTS `service_car`;
CREATE TABLE IF NOT EXISTS `service_car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `service_car`
--

INSERT INTO `service_car` (`id`, `nom`, `image`, `description`, `details`) VALUES
(1, 'Maintenance ', 'IMAGES/Maintenance.jpg', 'Nous assurons l\'entretien et la longévité de votre véhicule avec un service expert.', 'MAINTENANCE A : Moteur , Transmission, Boîte de vitesse\r\n  MAINTENANCE B : Carrosserie, Climatiseur, Pneu'),
(2, 'Réparation', 'IMAGES/Réparation.jpg', 'Des réparations rapides et efficaces pour remettre votre véhicule en parfait état', 'RÉPARATION A : Embrayage, Frein , Courroie de distribution. \r\n  RÉPARATION B : Faisceau électrique, Système multimédia, Système d’allumage'),
(3, 'Pièces de rechange', 'IMAGES/Pièce.jpg', 'Des pièces de qualité pour garantir le bon fonctionnement de votre véhicule', 'PIÈCES A : Essuie-glace, Disque frein , Amortisseur\r\n  PIÈCES B : Batterie, Radiateur, Alternateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `nom_utilisateur`, `mot_de_passe`) VALUES
(2, 'Ginola', 'Manjaka', 'manjakaginola@gmail.com', 'Ginola', '5555'),
(34, 'SOLOFONIAINA', 'Mireille', 'Mireille@gmail.com', 'Mireille', '$2y$10$q6mXLvHqCagR3eLLtdZlkee0rqp3Iz7KFEYMtzxIPle1x8Q2IwSfq'),
(35, 'Kakarot', 'Songoku', 'goku@gmail.com', 'goku', '$2y$10$vUV7bynsw3blZmy2.VGRYOjH2KATm3FWhhucFTa.nOs2qQ8WpRuzG'),
(38, 'RAFALIMANANTSOA', 'Francky Marcel', 'rafalifrancky03@gmail.com', 'kyffr', '$2y$10$gFEyhMDF6fBRl/lFmsBRpu2YDIkjkdQcL2iU.kyrlOFR/vOmyR.2a'),
(39, 'Shum', 'Shum', 'Shum@gmail.com', 'Shumshum', '$2y$10$OhK4JABxKwZp1awFOMwBvufCfCX7RZQLN7chyaSzbi8gj4qp5nxPG'),
(40, 'Marcel', 'Francky', 'francky@gmail.com', 'kyffra', '$2y$10$f908Bp9q0KQ6l8cBdl7CF.eOVVCNBOota37qwKG1xnwVZlu6dcnd6');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `nb_demandes` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id`, `marque`, `modele`, `prix`, `image`, `description`, `nb_demandes`) VALUES
(1, 'Ford', 'Ford Ranger Raptor', 65000.00, 'IMAGES/ford raptor1', 'La Ford Ranger Raptor est un pick-up haute performance conçu pour le tout-terrain. Avec son moteur bi-turbo diesel de 213 chevaux et une suspension Fox Racing, il offre une conduite stable et puissante sur les terrains les plus accidentés.', 0),
(2, 'Ford', 'Ford F-150', 55000.00, 'IMAGES/150.jpg', 'La Ford F-150 est un pick-up légendaire reconnu pour sa robustesse et sa polyvalence. Il offre une capacité de remorquage impressionnante, un intérieur confortable et des technologies avancées, idéales pour le travail et les loisirs.', 0),
(3, 'Ford', 'Focus', 29000.00, 'IMAGES/Ford Focus.webp', 'La Ford Focus est une berline dynamique et moderne. Avec ses motorisations économiques, son design aérodynamique et ses équipements high-tech, elle allie performance, confort et sécurité pour une conduite agréable en ville comme sur route.', 0),
(4, 'Ford', 'Ford Explorer', 40000.00, 'IMAGES/explorer.jpg', 'La Ford Explorer est un SUV spacieux et puissant conçu pour les familles et les aventuriers. Doté d’un moteur V6 hybride de 457 chevaux, d’une transmission intégrale et d’un intérieur haut de gamme avec écran tactile et sièges chauffants, il garantit un confort et une sécurité optimaux.', 0),
(5, 'Mercedes', 'AMG GT', 95000.00, 'IMAGES/AMG GT.jpg', 'La Mercedes AMG GT est une voiture de sport haut de gamme qui allie puissance phénoménale, design sculpté et technologie de pointe, offrant des performances exceptionnelles sur route comme sur circuit.', 1),
(6, 'Mercedes', 'CLS 63 AMG', 190000.00, 'IMAGES/CLS 63 AMG Mercedes Benz.jpg', 'Le CSL 63 AMG est un véritable chef-d\'œuvre de la performance, combinant puissance brute, agilité et luxe, pour offrir une expérience de conduite exaltante et exclusive.', 0),
(7, 'Mercedes', 'Mercedes class G', 160000.00, 'IMAGES/Mercedes class G.jpg', 'La Mercedes Classe G est une légende de l\'automobile, alliant robustesse, luxe et capacités tout-terrain exceptionnelles.', 0),
(8, 'Mercedes', 'Mercedes Maybach', 155000.00, 'IMAGES/Mercedes Maybach.jpg', 'La Mercedes Maybach incarne le summum du raffinement et du luxe, offrant une expérience de conduite ultra-privilégiée avec des matériaux nobles, un confort absolu et une puissance discrète mais impressionnante.', 0),
(9, 'Toyota', 'RAV4', 36000.00, 'toyota/RAV4.jpg', 'La Toyota RAV4 est un SUV hybride combinant puissance et efficacité énergétique. Son design audacieux et son intérieur spacieux en font un choix idéal pour toutes les aventures.', 2),
(10, 'Toyota', 'Corolla', 29000.00, 'toyota/2023-toyota-corolla-zr-hybrid-hatch-silver-1.jpg', 'La Toyota Corolla est une berline économique et fiable. Elle offre un excellent rendement énergétique, un confort moderne et des technologies avancées pour une conduite agréable.', 0),
(11, 'Toyota', 'Camry', 24000.00, 'toyota/toyota_camry.jpg', 'La Toyota Camry est une berline élégante et performante. Elle propose un habitacle spacieux, des technologies de pointe et un moteur dynamique pour une conduite fluide et confortable.', 0),
(12, 'Toyota', 'Land Cruiser V8', 130000.00, 'toyota/v8.jpg', 'La Toyota Land Cruiser V8 est un SUV robuste et puissant, conçu pour affronter tous les terrains. Son moteur performant et son intérieur haut de gamme garantissent une expérience unique.', 0);

--
-- Déclencheurs `voiture`
--
DROP TRIGGER IF EXISTS `after_voiture_update`;
DELIMITER $$
CREATE TRIGGER `after_voiture_update` AFTER UPDATE ON `voiture` FOR EACH ROW BEGIN
  IF OLD.marque != NEW.marque 
  OR OLD.modele != NEW.modele 
  OR OLD.prix != NEW.prix 
  OR COALESCE(OLD.description, '') != COALESCE(NEW.description, '')
  THEN
    INSERT INTO historique_voiture (
      voiture_id,
      ancien_marque, ancien_modele, ancien_prix, ancienne_description,
      nouveau_marque, nouveau_modele, nouveau_prix, nouvelle_description,
      modifie_le
    )
    VALUES (
      OLD.id,
      OLD.marque, OLD.modele, OLD.prix, OLD.description,
      NEW.marque, NEW.modele, NEW.prix, NEW.description,
      NOW()
    );
  END IF;
END
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
