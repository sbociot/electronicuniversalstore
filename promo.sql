-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 27 Février 2017 à 14:23
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `categorie`
--

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(255) NOT NULL,
  `prix avec taxes` varchar(255) NOT NULL,
  `economiser` varchar(255) NOT NULL,
  `livraison` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `promo`
--

INSERT INTO `promo` (`id`, `nom`, `image`, `description`, `prix`, `prix avec taxes`, `economiser`, `livraison`) VALUES
(1, 'Ordinateur de Boureau', 'ordinateur_hp.png', '260-A129 de HP (A8-7410 d\'AMD/DD 1 To/RAM 8 Go/Radeon R5 d\'AMD/Windows 10)', '401,09 $', '461.25 $', 'Économisez 125.00 $', 'Dans deux jour'),
(2, 'Portable Acer', 'portable_acer.png', '15,6 po Aspire E d\'Acer - Noir (i5-7200U d\'Intel/DD 1 To/RAM 8 Go/Windows 10)', '570.89 $', '656.52 $', 'Économisez 85.00 $', 'Dans deux jour'),
(4, 'Téléviseur Intelligent.', 'tv_intelligent_webos.png', 'webOS 3.0 DEL HDR UHD 4K de 65 po de LG (65UH5500)', '1 423.99 $', '1 637.58 $', 'Économisez 125.00 $', 'Dans deux jour'),
(5, 'Meuble pour Téléviseur', 'meuble_tv.png', 'Meuble fixations et supports pour téléviseur.', '139.99 $', '160.98 $', 'Économisez 25.00 $', 'Dans deux jour'),
(6, 'Appareil de Photo COOLPIX', 'appareil_photo.png', 'Nouveau! Appareil photo numérique COOLPIX L32 de 20,1 Mpx avec zoom optique 5x et sac Platinum - Noir', '110.00 $', '126.77 $', 'Économisez 45.00 $', 'dans deux jour'),
(7, 'Caméra d\'action OLYMPUS', 'camera_olympus.png', 'Caméra d\'action de 8 Mpx TG-Tracker d\'Olympus (V104180BU000) - Noir', '449.99 $', '517.48 $', 'Économisez 75.00 $', 'Dans deux jour'),
(8, 'Planche Gyroscopique SWAGTRON', 'planche_gyroscopique.png', 'Planche gyroscopique électrique X1 de Mmnox - Noir.', '359.99 $', '413.98 $', 'Économisez 110.00 $', 'Dans deux Jour'),
(9, 'Xbox & NHL', 'xbox.png', 'Nouveau! Xbox One S 500GB\r\nMinecraft Bundle with NHL 17', '385.97 $', '443.86', 'Économisez 55.00 $', 'Dans deux jour'),
(10, 'Samsung Galaxy S7.', 'galaxy_s7.png', 'Téléphone intelligent Galaxy S7 de 32 Go de Samsung offert par Bell, Roger, Koodo et Fido. Entente de 2 ans.', '00.00', 'Entente de 2 ans', '', 'Pas offert en ligne.'),
(11, 'iPhone 6s de 32 Go ', 'iphone6s.png', 'iPhone 6s de 32 Go d\'Apple offert par Rogers, Bell, Koodo, Fido - Doré - Gris cosmique.', '00.00', 'Entente de 2 ans', '', 'Pas offert en ligne'),
(12, 'Barre de son LG', 'barre_son.png', 'Barre de son 2.1 canaux 300 W SH3B de LG. MODÈLE N. SH3B', '200.80 $', '230.92 $', 'Économisez 25.00 $', 'Dans deux jour'),
(13, 'Casque d\'écoute sans fil', 'casque_ecoute.png', 'Casque d\'écoute sans fil à suppression du bruit QuietComfort 35 de Bose - Noir', '450.35 $', ' 517.91 $', 'Économisez 105.00 $', 'Dans deux jour');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
