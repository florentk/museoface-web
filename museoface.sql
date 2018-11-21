-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 12 nov. 2018 à 21:01
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
CREATE DATABASE IF NOT EXISTS `museoface` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `museoface`;

-- --------------------------------------------------------

--
-- Structure de la table `portrait`
--

CREATE TABLE `portrait` (
  `portrait_key` int(11) NOT NULL,
  `portrait_id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `descriptif` varchar(1000) NOT NULL,
  `quete_id` tinyint(4) NOT NULL,
  `quete_titre` varchar(100) NOT NULL,
  `quete_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `portrait`
--

INSERT INTO `portrait` (`portrait_key`, `portrait_id`, `titre`, `descriptif`, `quete_id`, `quete_titre`, `quete_img`) VALUES
(1, 8150, 'Lambert Sustris, Noli me tangere, 1548-1560', 'La silhouette que tu as trouvée est celle de Jésus. Il pose de profil, en pied, la main levée désignant le ciel, royaume de Dieu qu’il rejoindra bientôt.\r\n\r\nCette oeuvre, représente un épisode de l’Evangile selon saint Jean (20-17) : le Christ ressuscité apparaît à Marie Madeleine et lui dit ces mots “Noli me tangere” qui signifie en latin “Ne me touche pas” en désignant le ciel, Royaume de Dieu qu’il rejoindra bientôt.\r\n\r\nLe peintre, Lambert Sustris situe la scène dans un jardin digne d’un palais Renaissance, comme si cette scène religieuse s’était passée à son époque!\r\nLes armoiries en bas à gauche du tableau sont celles de la famille Fugger von Kirchberg und Witzenhorn à Augsbourg.', 1, 'Vous, ici!? ', 'jesus.png'),
(2, 8768, 'Nicolas de Largillière, Portrait de Marguerite Elisabeth de Largillière', 'La silhouette que tu as trouvée est celle d’une jeune fiancée, Marguerite Elisabeth Largillière. Cette élégante femme du XVIIIème pose à mi-corps de ¾ avec son visage de face. la pureté et la vérité. Chacunes, à leur manière, évoquent la promesse de l’union prochaine. Son regard doux et bienveillant est dirigé vers le peintre pour qui elle pose :  son père, le peintre Nicolas Largillière.\r\n\r\nElle porte à sa main gauche des oeillets et dévoile l’intérieur de sa robe de velours doublée de brocard. Sa chevelure est aussi ornée de bijoux et de fleurs : les oeillets comme les fleurs d’oranger, symbolisent l’affection, l’amour profond et sincère, tandis que les perles illustrent la pureté et la vérité de la fiancée promise au commissaire des guetres de la Boulalaye.  ', 2, 'Parce qu’elle le vaut bien!', 'femmerouge.png'),
(3, 9812, 'Charles-Antoine Coypel, Psyché abandonnée par l\'amour, 1748', 'La silhouette si expressive représentée ici est celle de Psyché, vêtue à la mode du XVIIIe siècle teintée d’exotisme évoquant l’Orient. La pose est théâtralisée : Psyché est en pied de face, le visage tourné vers le jeune Eros.  Toujours inspiré par le théâtre, ici le Ballet de Psyché de Molière. Coypel applique les règles savantes et recherchées de l’expression des passions théorisées par Charles Le Brun à la fin du XVIIe siècle. Peint comme son pendant pour la Tenture de Dresde de la manufacture des  Gobelins en 1748.', 3, 'Ciel ! Mon mari !', 'femmepied.png'),
(4, 4260, 'Paolo Zacchia, Portrait de femme, 1e moitié du XVIe siècle\r\n', 'La silhouette que tu as trouvée est celle d’une femme de la Renaissance italienne peint par Paolo Zacchia. Elle se tient assise, le buste tourné légèrement de trois-quarts vers la droite. On ne la voit que jusqu’au bassin. Par cette posture, elle donne une véritable impression d\'assurance et de sérieux. Cette femme italienne frappe par son regard, c\'est sûr, vous la dérangez! À peine la quitterez-vous, qu\'elle reprendra sans doute le fil de sa lecture, arrêté par deux doigts sûrs. Trois objets sont fondamentaux : l\'alliance à sa main gauche - elle est donc mariée, une croix sur sa poitrine - c\'est une femme pieuse, le livre - elle est cultivée. Autant de caractéristiques qui font d\'elle une femme de choix pour la haute société!', 4, 'C’est moi la plus belle!', 'femmeblanche.png'),
(5, 5106, 'Luca Giordano, Portrait de philosophe, vers 1660', 'La silhouette que tu as trouvée est celle du philosophe peint par Luca Giordano.\r\n\r\nVoici un philosophe qui a tout l\'air d\'un pèlerin : s\'appuyant sur un bâton (symbole de la marche), il a aussi une gourde attachée à sa ceinture. Ces details sont-ils là pour symboliser le cheminement de la pensée philosophique ?\r\nL\'air profond et sévère, il tient avec sincérité quelques feuillets de notes sur sa poitrine, au plus près de son cœur.', 5, 'Je pense donc je suis!', 'hommechapeau.png'),
(6, 1982, 'Pieter Codde, Jeune fumeur de pipe délaissant l\'étude ou La Mélancolie, 1630-40', 'La silhouette que tu as trouvée est celle d’un jeune fumeur de pipe délaissant l’étude peint par Pieter Codde. Le voici, avachi sur sa chaise, la tête appuyée sur son coude. L\'étudiant nous semble être en pleine rêverie. Un énorme livre repose sur sa table d\'étude. Vu son état, il a bien servi, peut-être même trop pour ce jeune étudiant qui préfère fumer la pipe, que l\'on découvre dans sa main droite. Cette position avachie nous montre qu\'il est fatigué et pensif.\r\nLes gros livres nous rappellent la lourdeur de l\'étude, la pipe éteinte évoque en revanche le temps qui file.', 6, 'La flemme', 'jeunehomme.png'),
(7, 2146, 'Jean-François De Troy, Vieille femme se chauffant les mains, XVIIIe siècle', 'La silhouette que tu as trouvée représente une vieille femme assise près d’une cheminée. Sa main gauche est tendue vers la cheminée (de laquelle sort une petite flamme rouge), la droite tient un morceau de pain. Cherchant à se réchauffer dans ses vêtements et grâce au feu, elle va bientôt pouvoir dîner, ce qui semble la réjouir.\r\nLa scène et l\'absence de décors nous dévoile la pauvreté de cette vieille femme.Les gros livres nous rappellent la lourdeur de l\'étude, la pipe éteinte évoque en revanche le temps qui file.', 7, 'Il fait froid ici !', 'vieillefemme.png'),
(8, 9772, 'Jan Lievens, Tête de vieillard, milieu du XVIIe siècle', 'La silhouette que tu as trouvée est celle d’un homme d’âge mûr, tourné vers la droite, les yeux levés. La lumière, chaude, vient de la gauche et illumine son visage sur le côté.\r\nLe choix de ce sujet est l’occasion pour Jan Lievens de s’essayer à une représentation minutieuse d’un visage marqué par la vieillesse. Il s’agit de créer des jeux d’ombre et de lumière grâce aux rides, aux yeux cernés et au nez busqué.\r\nCette œuvre, sans doute réalisée d’après un modèle vivant, fait partie d’une série de tableaux de l’artiste sur le thème de la vieillesse. ', 8, 'Aaah, si vous saviez!', 'hommeregardhaut.png'),
(9, 5876, 'Portrait d\'homme, 1659, Wybrand Simonsz de Geest', 'La silhouette que tu as trouvée représente celle d\'un important aristocrate, qui appartient à une grande famille. Cet homme est richement vêtu, il se trouve devant une belle balustrade depuis laquelle pend un grand tapis rouge. Tu remarqueras deux objets qu’il tient dans ses mains : la canne à droite, qui symbolise le pouvoir du chef de famille, l\'oranger à gauche qui rappelle le rattachement des Pays du Nord à la couronne espagnole. ', 9, 'Quel homme !', 'hommecanne.png');


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
-- Index pour la table `portrait`
--
ALTER TABLE `portrait`
  ADD PRIMARY KEY (`portrait_key`);

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
-- AUTO_INCREMENT pour la table `portrait`
--
ALTER TABLE `portrait`
  MODIFY `portrait_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `visiteur_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
