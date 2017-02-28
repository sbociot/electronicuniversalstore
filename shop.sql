-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 28, 2017 at 01:08 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `icon_shop`
--

CREATE TABLE `icon_shop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icon_shop`
--

INSERT INTO `icon_shop` (`id`, `name`, `image`) VALUES
(1, 'Ordinateur', 'computer.png'),
(2, 'Jeux', 'gamepad.png'),
(3, 'Software', 'application.png'),
(4, 'Laptop', 'laptop.png'),
(5, 'Moniteur', 'monitor.png'),
(6, 'Telephone', 'smartphone.png'),
(7, 'Audio', 'speaker.png'),
(8, 'Burreau', 'table.png'),
(9, 'Camera', 'camera.png'),
(10, 'Maison', 'washing-machine.png');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
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
-- Dumping data for table `promo`
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

-- --------------------------------------------------------

--
-- Table structure for table `shop_categorie`
--

CREATE TABLE `shop_categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` varchar(255) NOT NULL,
  `itemtype` enum('Moniteur','Jeux','Telephone','Ordinateur','Camera','Audio','Burreau','Software','Maison','Laptop') NOT NULL,
  `description_1` text NOT NULL,
  `description_2` text NOT NULL,
  `description_3` text NOT NULL,
  `Caractéristiques de base` text NOT NULL,
  `Type de processeur` text NOT NULL,
  `Vitesse du processeur` text NOT NULL,
  `Cours de processeur` text NOT NULL,
  `Mémoire vive` text NOT NULL,
  `Capacité du Disque dur` text NOT NULL,
  `Vitesse du disque dur (tours par minute)` text NOT NULL,
  `Capacité du Disque SSD` text NOT NULL,
  `Lecteurs optiques` text NOT NULL,
  `Équipé du systeme d'exploitation` text NOT NULL,
  `Carte graphique` text NOT NULL,
  `Mémoire vidéo dédiée` text NOT NULL,
  `Mémoire vidéo` text NOT NULL,
  `Syntoniseur télé` text NOT NULL,
  `Compatible à la réalité virtuelle` text NOT NULL,
  `Écran` text NOT NULL,
  `Ecran intégré` text NOT NULL,
  `Conforme à la norme HDCP` text NOT NULL,
  `Taille/type d'écran` text NOT NULL,
  `Écran tactile` text NOT NULL,
  `Résolution d'écran native` text NOT NULL,
  `Sortie audio` text NOT NULL,
  `Wattage des haut-parleurs` text NOT NULL,
  `Microphone intégré` text NOT NULL,
  `Entrée pour microphone` text NOT NULL,
  `Entrée de ligne` text NOT NULL,
  `Sortie de ligne` text NOT NULL,
  `Entrée numérique` text NOT NULL,
  `Sortie numérique` text NOT NULL,
  `Réseautage` text NOT NULL,
  `Port Ethernet` text NOT NULL,
  `Technologie Wi-Fi intégrée` text NOT NULL,
  `Technologie Bluetooth intégrée` text NOT NULL,
  `Entrées et sorties` text NOT NULL,
  `Caméra Web` text NOT NULL,
  `Clavier` text NOT NULL,
  `Souris` text NOT NULL,
  `Ports USB` text NOT NULL,
  `Compatibilité du lecteur de cartes` text NOT NULL,
  `Sortie VGA` text NOT NULL,
  `Sortie DVI` text NOT NULL,
  `Sortie HDMI` text NOT NULL,
  `Sortie vidéo en composantes` text NOT NULL,
  `Sortie S-Vidéo` text NOT NULL,
  `Sortie composite` text NOT NULL,
  `Autres entrées ou sorties` text NOT NULL,
  `Caractéristiques informatiques` text NOT NULL,
  `Cache du processeur` text NOT NULL,
  `Baies disponibles pour disque dur` text NOT NULL,
  `Baies optiques disponibles` text NOT NULL,
  `Logements PCIe disponibles` text NOT NULL,
  `Logements PCI disponibles` text NOT NULL,
  `Logements AGP disponibles` text NOT NULL,
  `Logements de mémoire disponibles` text NOT NULL,
  `Supports de stockage amovibles` text NOT NULL,
  `Alimentation` text NOT NULL,
  `Certifié Energy Star` text NOT NULL,
  `Logiciels` text NOT NULL,
  `Langage du système d'exploitation` text NOT NULL,
  `Logiciel installé` text NOT NULL,
  `Caractéristiques du produit` text NOT NULL,
  `Couleur` text NOT NULL,
  `Largeur` text NOT NULL,
  `Hauteur` text NOT NULL,
  `Profondeur` text NOT NULL,
  `Largeur (pouces)` text NOT NULL,
  `Hauteur (pouces)` text NOT NULL,
  `Profondeur (pouces)` text NOT NULL,
  `Poids` text NOT NULL,
  `Main-d’œuvre sous garantie` text NOT NULL,
  `Pièces sous garantie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categorie`
--

INSERT INTO `shop_categorie` (`id`, `nom`, `image`, `description`, `prix`, `itemtype`, `description_1`, `description_2`, `description_3`, `Caractéristiques de base`, `Type de processeur`, `Vitesse du processeur`, `Cours de processeur`, `Mémoire vive`, `Capacité du Disque dur`, `Vitesse du disque dur (tours par minute)`, `Capacité du Disque SSD`, `Lecteurs optiques`, `Équipé du systeme d'exploitation`, `Carte graphique`, `Mémoire vidéo dédiée`, `Mémoire vidéo`, `Syntoniseur télé`, `Compatible à la réalité virtuelle`, `Écran`, `Ecran intégré`, `Conforme à la norme HDCP`, `Taille/type d'écran`, `Écran tactile`, `Résolution d'écran native`, `Sortie audio`, `Wattage des haut-parleurs`, `Microphone intégré`, `Entrée pour microphone`, `Entrée de ligne`, `Sortie de ligne`, `Entrée numérique`, `Sortie numérique`, `Réseautage`, `Port Ethernet`, `Technologie Wi-Fi intégrée`, `Technologie Bluetooth intégrée`, `Entrées et sorties`, `Caméra Web`, `Clavier`, `Souris`, `Ports USB`, `Compatibilité du lecteur de cartes`, `Sortie VGA`, `Sortie DVI`, `Sortie HDMI`, `Sortie vidéo en composantes`, `Sortie S-Vidéo`, `Sortie composite`, `Autres entrées ou sorties`, `Caractéristiques informatiques`, `Cache du processeur`, `Baies disponibles pour disque dur`, `Baies optiques disponibles`, `Logements PCIe disponibles`, `Logements PCI disponibles`, `Logements AGP disponibles`, `Logements de mémoire disponibles`, `Supports de stockage amovibles`, `Alimentation`, `Certifié Energy Star`, `Logiciels`, `Langage du système d'exploitation`, `Logiciel installé`, `Caractéristiques du produit`, `Couleur`, `Largeur`, `Hauteur`, `Profondeur`, `Largeur (pouces)`, `Hauteur (pouces)`, `Profondeur (pouces)`, `Poids`, `Main-d’œuvre sous garantie`, `Pièces sous garantie`) VALUES
(1, 'OMEN by HP Desktop PC 870-119', 'hp_omen_870.png', 'Intel® Core™ i7-6700 with Intel® HD Graphics 530 (3.4 GHz, up to 4 GHz, 8 MB cache, 4 cores)\r\n', '$1 699.99', '', 'Intel® HD Graphics 530', '16 GB DDR4-2133 SDRAM (2 x 8 GB)', '2 TB 7200 rpm SATA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'OMEN X by HP 900-019 Desktop PC', 'omen_900-019.png', 'Intel® Core™ i7-6700K (4 GHz, up to 4.2 GHz, 8 MB cache, 4 cores)', '$2 999.99', 'Ordinateur', 'Intel® HD Graphics 530', '16 GB DDR4-2133 SDRAM (2 x 8 GB)', '2 TB 7200 rpm SATA', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'OMEN by HP 32 Display', 'omen_by_HP_32_Display.png', '32-inch display, diagonally measured', '$ 499.99', 'Moniteur', 'Anti-glare; Language selection; LED Backlights; On-screen controls; Plug and Play; User programmable', '2560 x 1440 @ 75Hz QHD\r\n', 'Display Port 1.2;HDMI x 2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'ASUS A10-7800 d\'AMD/DD 2 To/RAM 16 Go/Windows 10)', 'ASUS_A10_7800.png', 'Processeur quadruple coeur A10-7800 à 3,9 GHZ d\'AMD et 16 Go de mémoire vive offrant une performance fiable pour toutes vos activités informatiques quotidiennes', '\r\n601,09 $', 'Ordinateur', 'Disque dur 2 To pour stocker tous vos fichiers multimédias', 'Connectivité Wi-Fi 802.11ac vous permettant de vous connecter à votre réseau résidentiel ou à des points d\'accès Wi-Fi et profiter d\'une connexion sans fil très rapide', '6 ports USB pour connecter des périphériques comme une imprimante, une clé USB et autres, et ports HDMI et VGA pour connecter un moniteur ou un téléviseur', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Predator_G3_710_Acer', 'Predator_G3_710_Acer.png', 'Processeur quadruple coeur Core i5-6400 à 2,7 GHz d\'Intel et 16 Go de mémoire vive permettant de travailler facilement avec plusieurs en même temps, et offrant toute la puissance dont vous avez besoin pour jouer à des jeux exigeants ou modifier des vidéos et des photos', '\r\n1 401,09 $', 'Ordinateur', 'Disque dur de 1 To offrant tout l\'espace dont vous avez besoin pour vos fichiers, vos vidéos, vos chansons, vos photos et autres', 'Disque SSD de 128 Go aidant à optimiser la performance avec un accès rapide aux applications et aux logiciels les plus souvent utilisés, ce qui réduit les temps de chargement et de démarrage', 'Carte graphique GeForce GTX 1060 de NVIDIA avec 3 Go de mémoire graphique dédiée offrant une expérience de jeu en réalité virtuelle époustouflante avec une qualité graphique à incroyable', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Aspire T3 d\'Acer (Ci7-6700 d\'Intel/DD 3 To/RAM 16 Go/R9-360 2 Go d\'AMD/Windows 10)', 'Aspire_T3_Acer.png', 'Processeur Ci7-6700 de 3,4 GHz d\'Intel et 16 Go de mémoire vive offrant une performance exceptionnelle et vous permettant de travailler avec des applications gourmandes, y compris les logiciels d\'édition de vidéos et de photos, les jeux 3D et le contenu de divertissement en HD', '\r\n901,09 $', 'Ordinateur', 'Disque dur très spacieux de 3 To vous offrant amplement d\'espace pour stocker vos bibliothèques multimédias, vos logiciels et vos documents importants', 'Connectivité Wi-Fi 802.11ac intégrée vous permettant de vous connecter facilement à votre réseau résidentiel et d\'accroître la portée', 'Bluetooth 4.0 intégré permettant le jumelage avec d\'autres appareils compatibles, notamment téléphones intelligents, imprimantes et haut-parleurs, afin de profiter d\'une expérience sans fil sans tracas', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, ' Predator AG1-710 d\'Acer (Core i7 d\'Intel/DD 2 To/SSD 512 Go/GTX 1080 de NVIDIA)', 'Predator_G1.png', '\r\nProcesseur Core i7-6700 à 3,4 GHz d\'Intel et 32 Go de mémoire vive offrant une performance foudroyante et vous permettant de jouer aux plus récents jeux avec tous les paramètres au maximum', '\r\n3 001,09 $', 'Ordinateur', 'Carte graphique GeForce GTX 1080 de NVIDIA avec 8 Go de mémoire graphique dédiée prenant en charge le contenu Ultra HD 4K et le contenu à réalité virtuelle, et vous permettant de jouer à vos jeux avec tous les paramètres au maximum', '\r\n6 ports USB au total (2 à l\'avant, 4 à l\'arrière) pour connecter facilement toutes sortes de périphériques et d\'accessoires comme une imprimante, un clavier, une souris et autres', '6 ports USB au total (2 à l\'avant, 4 à l\'arrière) pour connecter facilement toutes sortes de périphériques et d\'accessoires comme une imprimante, un clavier, une souris et autres.Sorties HDMI, DVI et DisplayPort pour connecter le moniteur ou téléviseur HD de votre choix, ou plusieurs écrans en même temps', 'Caractéristiques de base', 'Core i7-6700 d\'Intel', '3,4 GHz', '4', '32 Go (DDR4 2133 MHz)', '2 To (RPM) ', '7200 tr/min', '512 Go', 'Lecteur Super-Multi 8x', 'Windows 10', 'Carte graphique GeForce GTX1080 de NVIDIA avec 8 Go de mémoire graphique GDDR5X', 'Non', '8 Go', 'Non', 'Oui', 'Non', 'non', 'Sans objet', 'Sans objet', 'Sans objet', 'Sans objet', 'Carte de son Sound Blaster X-Fi MB5 de Creative', 'Sans objet', 'Non', '1 à l\'avant', '1 à l\'arrière', '1 à l\'avant; 5 à l\'arrière', 'Non', 'Non', 'Resautage', 'DoubleshotMC Pro E2400 10/100/1000 Mbit/s de Killer', 'Wireless-AC 1535 802.11ac de Killer avec technologie MU-MIMO 2x2 (bibande : 2,4 GHz et 5 GHz)', 'Oui - 4.1', 'Entrée et sorties', 'Non', 'Pleine grandeur (touches mécaniques)\r\nSouris', 'Standard', '2 à l\'avant; 4 à l\'arrière', 'SD', 'Non', 'Oui', 'Oui', 'Non', 'Non', 'Non', '3 ports DisplayPort', 'Caractéristiques informatiques', '8 Mo de niveau 3', '1 baie interne de 3,5 po (0 libre); 1 baie interne de 2,5 po (1 libre)', '1 interne de 5,25 po (0 libre)', '1 port PCI-E x16 (0 libre)', 'Sans objet', 'Sans objet', '4 emplacements pour carte mémoire (0 libre)', 'Non', '460 W', 'Oui', 'Logiciels', 'Anglais', 'Acer Care Center; Version d\'essai de Microsoft Office; Version d\'essai de McAfee LiveSafe; Acer Cloud', 'Noir; Rouge', '11,00 cm', '41,80 cm', '3,48 cm', '4,33 po', '16,46 po', '13,7 po', '13,7 po', '7,76 kg', '1an', '1an');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icon_shop`
--
ALTER TABLE `icon_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categorie`
--
ALTER TABLE `shop_categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `icon_shop`
--
ALTER TABLE `icon_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `shop_categorie`
--
ALTER TABLE `shop_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
