-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 jan. 2024 à 16:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `carousel_eneba`
--

-- --------------------------------------------------------

--
-- Structure de la table `carousel_slide`
--

CREATE TABLE `carousel_slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carousel_slide`
--

INSERT INTO `carousel_slide` (`id`, `name`, `link`, `img1`, `img2`) VALUES
(1, 'Age of empire', 'https://store.steampowered.com/app/1466860/Age_of_Empires_IV_Anniversary_Edition/', 'age-of-empires-iv.jpg', 'Age_of_Empires_IV_Logo.png'),
(2, 'Crusaders Kings 3', 'https://store.steampowered.com/app/1158310/Crusader_Kings_III/', 'crusaders_kings_3.jpg', 'Crusader_Kings_3_Logo.png'),
(3, 'Assassin\'s Creed 2', 'https://store.steampowered.com/app/33230/Assassins_Creed_2/?curator_clanid=185907', 'assassins_creed_2.jpg', 'assassins_creed_2_logo.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carousel_slide`
--
ALTER TABLE `carousel_slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carousel_slide`
--
ALTER TABLE `carousel_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
