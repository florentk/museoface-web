-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  sam. 10 nov. 2018 à 23:48
-- Version du serveur :  5.5.58-38.10-log
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `museoface`
--

-- --------------------------------------------------------

--
-- Structure de la table `portrait`
--

CREATE TABLE `portrait` (
  `portrait_id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `descriptif` varchar(1000) NOT NULL,
  `quete_id` tinyint(4) NOT NULL,
  `quete_titre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `portrait`
--

INSERT INTO `portrait` (`portrait_id`, `titre`, `descriptif`, `quete_id`, `quete_titre`) VALUES
(8150, 'un portrait', 'le descriptif de protrait', 1, 'profil'),
(5876, 'un autre portrait', ' bla bla', 2, 'face');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `visiteur_id` bigint(20) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `quete_id` int(11) DEFAULT NULL,
  `portrait_id` int(11) DEFAULT NULL,
  `fond_id` char(10) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`visiteur_id`),
  ADD KEY `visiteur_id` (`visiteur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `visiteur_id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
