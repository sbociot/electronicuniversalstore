-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 27, 2017 at 09:04 AM
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
(3, 'App | Software', 'application.png'),
(4, 'Laptop', 'laptop.png'),
(5, 'Monniteur', 'monitor.png'),
(6, 'Telephone', 'smartphone.png'),
(7, 'Audio', 'speaker.png'),
(8, 'Desk | Burreau', 'table.png'),
(9, 'Camera', 'camera.png'),
(10, 'Maison', 'washing-machine.png');

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
  `itemtype` enum('moniteur','jeux','telephone','desktop','portable','speaker','desk','software','tv') NOT NULL,
  `decrpition_1` text NOT NULL,
  `description_2` text NOT NULL,
  `description_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categorie`
--

INSERT INTO `shop_categorie` (`id`, `nom`, `image`, `description`, `prix`, `itemtype`, `decrpition_1`, `description_2`, `description_3`) VALUES
(1, 'OMEN by HP Desktop PC 870-119', 'hp_omen_870.png', 'Intel® Core™ i7-6700 with Intel® HD Graphics 530 (3.4 GHz, up to 4 GHz, 8 MB cache, 4 cores)\r\n', '$1 699.99', 'desktop', 'Intel® HD Graphics 530', '16 GB DDR4-2133 SDRAM (2 x 8 GB)', '2 TB 7200 rpm SATA'),
(2, 'OMEN X by HP 900-019 Desktop PC', 'omen_900-019.png', 'Intel® Core™ i7-6700K (4 GHz, up to 4.2 GHz, 8 MB cache, 4 cores)', '$2 999.99', 'desktop', 'Intel® HD Graphics 530', '16 GB DDR4-2133 SDRAM (2 x 8 GB)', '2 TB 7200 rpm SATA'),
(3, 'OMEN by HP 32 Display', 'omen_by_HP_32_Display.png', '32-inch display, diagonally measured', '$ 499.99', 'moniteur', 'Anti-glare; Language selection; LED Backlights; On-screen controls; Plug and Play; User programmable', '2560 x 1440 @ 75Hz QHD\r\n', 'Display Port 1.2;HDMI x 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icon_shop`
--
ALTER TABLE `icon_shop`
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
-- AUTO_INCREMENT for table `shop_categorie`
--
ALTER TABLE `shop_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
