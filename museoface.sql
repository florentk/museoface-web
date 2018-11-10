-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 11 Novembre 2018 à 00:46
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`visiteur_id`, `pseudo`, `mail`, `quete_id`, `portrait_id`, `fond_id`, `image_id`) VALUES
(1, 'florent', 'florent@kaisseR.name', NULL, NULL, NULL, NULL),
(2, 'florentk', '', NULL, NULL, NULL, NULL),
(3, 'florentk', 'florent.com@kaisser.fr', NULL, NULL, NULL, NULL),
(4, 'florentk', 'florent.com@kaisser.fr', NULL, NULL, NULL, NULL),
(5, 'florentk', 'florent.com@kaisser.fr', 2, NULL, NULL, NULL),
(6, 'florentk', 'florent.com@kaisser.fr', NULL, NULL, NULL, NULL),
(7, 'florentk', 'florent.com@kaisser.fr', 1, 8150, '0', NULL),
(8, 'sarah', 'sara@toto.fr', 2, 5876, 'ZENX', NULL),
(9, 'hary', 'har@ggg.com', 2, 5876, 'TIMN', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`visiteur_id`),
  ADD KEY `visiteur_id` (`visiteur_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `visiteur_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
