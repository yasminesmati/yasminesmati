-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 juin 2023 à 21:04
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `allrest`
--

CREATE TABLE `allrest` (
  `ID` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `place` varchar(50) NOT NULL,
  `categorie` varchar(80) NOT NULL,
  `image` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `allrest`
--

INSERT INTO `allrest` (`ID`, `name`, `place`, `categorie`, `image`, `Description`) VALUES
(1, 'Signature', '[9 Bd du 11 Decembre El Biar]', 'Italienne', 'https://media-cdn.tripadvisor.com/media/photo-s/1a/cd/8e/88/love-understands-all.jpg', ' FOURCHETTE DE PRIX \r\n      298 DZD - 1 343 DZD\r\n      CUISINES \r\n      Italienne, Française, Japonaise, Méditerranéenne, Barbecue/Grillades, Asiatique, Moyen-Orient\r\n      RÉGIMES SPÉCIAUX\r\n      Végétariens bienvenus, Choix végétaliens, Halal\r\n      Voir tous les détails\r\n      Repas, Fonctionnalités\r\n'),
(2, 'Normand', '[Freres ALLAHOUM Alger ctre 16000]', 'Française Europeenne', 'https://media-cdn.tripadvisor.com/media/photo-s/1b/f9/e5/06/bon-appetit.jpg', 'Détails\r\n    CUISINES \r\n    indian\r\n    REPAS\r\n    Déjeuner, Dîner'),
(3, 'Tajmahal', '[Centre commercial Ben Aknoun]', '[Indienne]', 'https://media-cdn.tripadvisor.com/media/photo-s/1b/f9/e5/06/bon-appetit.jpg', 'Détails\r\n    CUISINES \r\n    indian\r\n    REPAS\r\n    Déjeuner, Dîner'),
(4, 'Cookstraditional', '[chemin de Madeleine Hydra]', 'traditionnel', 'https://lepetitjournal.com/sites/default/files/inline-images/Restaurant%20Kheimat%20Essaoura%20Alger.jpg', 'Détails\r\n  CUISINES \r\n  Café, Arabe, Algérien\r\n  REPAS\r\n  Petit déjeuner, Déjeuner, Dîner\r\n'),
(5, 'Coint', '[EL Madania]', 'Internationale', 'https://i0.wp.com/harba-dz.com/wp-content/uploads/2021/10/Le-Coin-Restaurant-Lounge-0.jpg?fit=1440%2C881&ssl=1', 'CUISINES \r\nInternationale, Européenne, Algérien, Bars-restaurants');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `email`, `pass`, `first_name`, `last_name`) VALUES
(1, '[taleb.manel@esst-sup.com]', '[azerty1]', '[taleb]', '[manel]'),
(2, '[yasmine.smati@esst-suo.com]', '[azerty2]', '[smati]', '[yasmine]');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `allrest`
--
ALTER TABLE `allrest`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `allrest`
--
ALTER TABLE `allrest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
