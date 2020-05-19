-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 20 mai 2020 à 00:20
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `database1`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `nchamb` int(11) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `Ndpart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`nchamb`, `categorie`, `type`, `Ndpart`) VALUES
(1, 'luxe', 'Famiile', 2),
(2, 'Pixine', 'luxe', 1),
(3, 'Party', 'superieur', 4);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `Ndpart` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`Ndpart`, `nom`) VALUES
(1, 'D1'),
(2, 'D2'),
(4, 'D3'),
(5, 'D5'),
(6, 'D6');

-- --------------------------------------------------------

--
-- Structure de la table `etre_specialiste`
--

CREATE TABLE `etre_specialiste` (
  `Nspecial` int(11) NOT NULL,
  `Nmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etre_specialiste`
--

INSERT INTO `etre_specialiste` (`Nspecial`, `Nmed`) VALUES
(1, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `feuille_evolution`
--

CREATE TABLE `feuille_evolution` (
  `nfeuille` int(11) NOT NULL,
  `date` date NOT NULL,
  `Nmalad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `feuille_evolution`
--

INSERT INTO `feuille_evolution` (`nfeuille`, `date`, `Nmalad`) VALUES
(1, '2020-05-18', 2),
(2, '2020-05-18', 1),
(3, '2020-05-17', 4),
(4, '2020-05-18', 3);

-- --------------------------------------------------------

--
-- Structure de la table `interner`
--

CREATE TABLE `interner` (
  `Nmalad` int(11) NOT NULL,
  `Ndpart` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `interner`
--

INSERT INTO `interner` (`Nmalad`, `Ndpart`, `date`) VALUES
(1, 2, '2020-05-19'),
(2, 3, '2020-05-12');

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE `intervenir` (
  `Ndpart` int(11) NOT NULL,
  `Nmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `intervenir`
--

INSERT INTO `intervenir` (`Ndpart`, `Nmed`) VALUES
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `lit`
--

CREATE TABLE `lit` (
  `nlit` int(11) NOT NULL,
  `nchamb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lit`
--

INSERT INTO `lit` (`nlit`, `nchamb`) VALUES
(1, 2),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `malade`
--

CREATE TABLE `malade` (
  `Nmalad` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `lieu_naissance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `malade`
--

INSERT INTO `malade` (`Nmalad`, `nom`, `adresse`, `sexe`, `date_naissance`, `lieu_naissance`) VALUES
(1, 'Babacar', 'Thies', 'M', '2012-04-22', 'THIES'),
(2, 'Rassoul', 'Kaolack', 'M', '2020-05-19', 'Passy'),
(3, 'Astou', 'Thies', 'F', '2020-02-02', 'THIES'),
(4, 'Malick', 'Thies', 'F', '2020-12-05', 'Thies');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `Nmed` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `specialiste` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`Nmed`, `nom`, `specialiste`) VALUES
(1, 'M1', 'S1'),
(2, 'M2', 'S2'),
(3, 'M3', 'S1'),
(4, 'M4', 'S3');

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

CREATE TABLE `occuper` (
  `nlit` int(11) NOT NULL,
  `Nmalad` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `occuper`
--

INSERT INTO `occuper` (`nlit`, `Nmalad`, `date`) VALUES
(1, 2, '2020-03-01'),
(3, 4, '2020-05-19');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `Nspecial` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`Nspecial`, `nom`) VALUES
(1, 'S1'),
(2, 'S2'),
(3, 'S1'),
(4, 'S3');

-- --------------------------------------------------------

--
-- Structure de la table `suivre`
--

CREATE TABLE `suivre` (
  `Nmalad` int(11) NOT NULL,
  `Nmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suivre`
--

INSERT INTO `suivre` (`Nmalad`, `Nmed`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`nchamb`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`Ndpart`);

--
-- Index pour la table `etre_specialiste`
--
ALTER TABLE `etre_specialiste`
  ADD PRIMARY KEY (`Nspecial`);

--
-- Index pour la table `feuille_evolution`
--
ALTER TABLE `feuille_evolution`
  ADD PRIMARY KEY (`nfeuille`);

--
-- Index pour la table `interner`
--
ALTER TABLE `interner`
  ADD PRIMARY KEY (`Nmalad`);

--
-- Index pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD PRIMARY KEY (`Ndpart`);

--
-- Index pour la table `lit`
--
ALTER TABLE `lit`
  ADD PRIMARY KEY (`nlit`);

--
-- Index pour la table `malade`
--
ALTER TABLE `malade`
  ADD PRIMARY KEY (`Nmalad`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`Nmed`);

--
-- Index pour la table `occuper`
--
ALTER TABLE `occuper`
  ADD PRIMARY KEY (`nlit`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`Nspecial`);

--
-- Index pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`Nmalad`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `nchamb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `Ndpart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `etre_specialiste`
--
ALTER TABLE `etre_specialiste`
  MODIFY `Nspecial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `feuille_evolution`
--
ALTER TABLE `feuille_evolution`
  MODIFY `nfeuille` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `intervenir`
--
ALTER TABLE `intervenir`
  MODIFY `Ndpart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `lit`
--
ALTER TABLE `lit`
  MODIFY `nlit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `malade`
--
ALTER TABLE `malade`
  MODIFY `Nmalad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `Nmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `Nspecial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `suivre`
--
ALTER TABLE `suivre`
  MODIFY `Nmalad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
