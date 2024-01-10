-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 10 jan. 2024 à 16:36
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `formations`
--
CREATE DATABASE IF NOT EXISTS `formations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formations`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240110143454', '2024-01-10 15:35:05', 102);

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `resume` longtext NOT NULL,
  `explication` longtext NOT NULL,
  `duree` varchar(15) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `title`, `resume`, `explication`, `duree`, `niveau`, `lieu`) VALUES
(1, 'Formation Développement Web', 'Formation complète sur le développement web', 'Cette formation couvre les langages HTML, CSS, JavaScript et plus encore.', '8 semaines', 'Avancé', 'Paris'),
(2, 'Formation Marketing Digital', 'Stratégies avancées de marketing numérique', 'Découvrez les dernières tendances en marketing digital et les meilleures pratiques.', '6 semaines', 'Intermédiaire', 'Lyon'),
(3, 'Formation Python pour Débutants', 'Apprenez les bases de la programmation Python', 'Idéale pour les débutants, cette formation couvre les concepts fondamentaux de Python.', '4 semaines', 'Débutant', 'Marseille'),
(4, 'Formation Design Graphique', 'Maîtrisez les outils de conception graphique', 'Créez des designs exceptionnels en utilisant des logiciels populaires comme Adobe Photoshop et Illustrator.', '10 semaines', 'Avancé', 'Toulouse'),
(5, 'Formation Gestion de Projet', 'Techniques avancées de gestion de projet', 'Apprenez à planifier, organiser et exécuter des projets avec succès.', '12 semaines', 'Avancé', 'Bordeaux'),
(6, 'Formation Java EE', 'Développement d\'applications d\'entreprise avec Java', 'Explorez le développement d\'applications d\'entreprise robustes avec Java EE.', '8 semaines', 'Intermédiaire', 'Lille'),
(7, 'Formation Data Science', 'Introduction à la science des données', 'Découvrez les bases de l\'analyse de données et de la science des données.', '6 semaines', 'Intermédiaire', 'Strasbourg'),
(8, 'Formation Réseaux Informatiques', 'Comprendre les concepts fondamentaux des réseaux informatiques', 'Explorez les principes de base des réseaux informatiques et des protocoles de communication.', '10 semaines', 'Intermédiaire', 'Nantes'),
(9, 'Formation Leadership et Gestion d\'Équipe', 'Développez vos compétences en leadership et en gestion d\'équipe', 'Apprenez à motiver et à guider votre équipe vers le succès.', '8 semaines', 'Avancé', 'Nice'),
(10, 'Formation Cyber Sécurité', 'Sécurité informatique et protection des données', 'Protégez vos systèmes informatiques contre les menaces potentielles.', '12 semaines', 'Avancé', 'Montpellier');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
