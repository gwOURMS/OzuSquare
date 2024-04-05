-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 avr. 2024 à 11:56
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
-- Base de données : `ozusquare`
--

-- --------------------------------------------------------

--
-- Structure de la table `texte_citation`
--

CREATE TABLE `texte_citation` (
  `id_texte` int(255) NOT NULL,
  `id_citation` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `texte_citation`
--

INSERT INTO `texte_citation` (`id_texte`, `id_citation`) VALUES
(1, 5),
(1, 6),
(1, 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `texte_citation`
--
ALTER TABLE `texte_citation`
  ADD KEY `id_texte` (`id_texte`),
  ADD KEY `id_citation` (`id_citation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `texte_citation`
--
ALTER TABLE `texte_citation`
  ADD CONSTRAINT `texte_citation_ibfk_1` FOREIGN KEY (`id_texte`) REFERENCES `texte` (`Id`),
  ADD CONSTRAINT `texte_citation_ibfk_2` FOREIGN KEY (`id_citation`) REFERENCES `citation` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
