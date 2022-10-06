-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 28 sep. 2022 à 16:45
-- Version du serveur : 10.6.7-MariaDB-2ubuntu1.1
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `creerBD_TP3_papyrus`
--

-- --------------------------------------------------------

--
-- Structure de la table `entcom`
--

CREATE TABLE `entcom` (
  `numcom` int(10) NOT NULL,
  `obscom` varchar(50) DEFAULT NULL,
  `datecom` date DEFAULT NULL,
  `numfou` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entcom`
--

INSERT INTO `entcom` (`numcom`, `obscom`, `datecom`, `numfou`) VALUES
(70010, NULL, '2007-02-10', '00120'),
(70011, 'Commande urgente', '2007-03-01', '00540'),
(70020, NULL, '2007-04-25', '09180'),
(70025, 'Commande urgente', '2007-04-30', '09150'),
(70210, 'Commande cadencée', '2007-05-05', '00120'),
(70250, 'Commande cadencée', '2007-10-02', '08700'),
(70300, NULL, '2007-06-06', '09120'),
(70620, NULL, '2007-10-02', '00540'),
(70625, NULL, '2007-10-09', '00120'),
(70629, NULL, '2007-10-12', '09180');

-- --------------------------------------------------------

--
-- Structure de la table `fournis`
--

CREATE TABLE `fournis` (
  `numfou` varchar(25) NOT NULL,
  `nomfou` varchar(25) DEFAULT NULL,
  `ruefou` varchar(50) DEFAULT NULL,
  `posfou` char(5) DEFAULT NULL,
  `vilfou` varchar(30) DEFAULT NULL,
  `confou` varchar(15) DEFAULT NULL,
  `satisf` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournis`
--

INSERT INTO `fournis` (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES
('00120', 'GROBRIGAN', '20 Rue du papier', '92200', 'Papercity', 'Georges', 8),
('00540', 'ECLIPSE', '53 Rue lasse flotter les rubans', '78250', 'Bugbugville', 'Nestor', 7),
('08700', 'MEDICIS', '120 Rue des plantes', '75014', 'Paris', 'Lison', NULL),
('09120', 'DISCOBOL', '11 Rue des sports', '85100', 'La Roche sur Yon', 'Hercule', 8),
('09150', 'DEPANPAP', '26 Avenue des locomotives', '59987', 'Coroncountry', 'Pollux', 5),
('09180', 'HURRYTAPE', '68 Boulevard des octets', '04044', 'Dumpville', 'Track', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ligcom`
--

CREATE TABLE `ligcom` (
  `numlig` tinyint(3) NOT NULL,
  `qtecde` int(10) DEFAULT NULL,
  `priuni` varchar(50) DEFAULT NULL,
  `qteliv` int(10) DEFAULT NULL,
  `derliv` datetime DEFAULT NULL,
  `numcom` int(10) NOT NULL,
  `codart` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ligcom`
--

INSERT INTO `ligcom` (`numlig`, `qtecde`, `priuni`, `qteliv`, `derliv`, `numcom`, `codart`) VALUES
(1, 3000, '470', 3000, '2007-03-15 00:00:00', 70010, 'I100'),
(2, 2000, '485', 2000, '2007-07-05 00:00:00', 70010, 'I105'),
(3, 1000, '680', 1000, '2007-08-20 00:00:00', 70010, 'I108'),
(4, 200, '40', 250, '2007-02-20 00:00:00', 70010, 'D035'),
(5, 6000, '3500', 6000, '2007-03-31 00:00:00', 70010, 'P220'),
(6, 6000, '2000', 2000, '2007-03-31 00:00:00', 70010, 'P240'),
(7, 6000, '2000', 2000, '2007-05-16 00:00:00', 70011, 'I105'),
(8, 200, '140', NULL, '2007-12-31 00:00:00', 70020, 'B001'),
(9, 200, '140', NULL, '2007-12-31 00:00:00', 70020, 'B002'),
(10, 1000, '590', 1000, '2007-05-15 00:00:00', 70025, 'I100'),
(11, 500, '590', 500, '2007-05-15 00:00:00', 70025, 'I105'),
(12, 1000, '470', 1000, '2007-07-15 00:00:00', 70210, 'I100'),
(13, 10000, '3500', 10000, '2007-08-31 00:00:00', 70210, 'P220'),
(14, 50, '790', 50, '2007-10-31 00:00:00', 70300, 'I110'),
(15, 15000, '4900', 12000, '2007-12-15 00:00:00', 70250, 'P230'),
(16, 10000, '3350', 10000, '2007-11-10 00:00:00', 70250, 'P220'),
(17, 200, '600', 200, '2007-11-01 00:00:00', 70620, 'I105'),
(18, 1000, '470', 1000, '2007-10-15 00:00:00', 70625, 'I100'),
(19, 10000, '3500', 10000, '2007-10-31 00:00:00', 70625, 'P220'),
(20, 200, '140', NULL, '2007-12-31 00:00:00', 70629, 'B001'),
(21, 200, '140', NULL, '2007-12-31 00:00:00', 70629, 'B002');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `codart` char(4) NOT NULL,
  `libart` varchar(30) DEFAULT NULL,
  `stkale` int(10) DEFAULT NULL,
  `stkphy` int(10) DEFAULT NULL,
  `qteann` int(10) DEFAULT NULL,
  `unimes` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES
('B001', 'Bande magnétique 1200', 20, 87, 240, 'unité'),
('B002', 'Bande magnétique 6250', 20, 12, 410, 'unité'),
('D035', 'CD R slim 80 mm', 40, 42, 150, 'B010'),
('D050', 'CD R-W 80mm', 50, 4, 0, 'B010'),
('I100', 'Papier 1 ex continu', 100, 557, 3500, 'B1000'),
('I105', 'Papier 2 ex continu', 75, 5, 2300, 'B1000'),
('I108', 'Papier 3 ex continu', 200, 557, 3500, 'B500'),
('I110', 'Papier 4 ex continu', 10, 12, 63, 'B400'),
('P220', 'Pré imprimé commande', 500, 2500, 24500, 'B500'),
('P230', 'Pré imprimé facture', 500, 250, 12500, 'B500'),
('P240', 'Pré imprimé bulletin paie', 500, 3000, 6250, 'B500'),
('P250', 'Pré imprimé livraison', 500, 2500, 24500, 'B500'),
('P270', 'Pré imprimé bon fabrication', 500, 2500, 24500, 'B500'),
('R080', 'Ruban Espon 850', 10, 2, 120, 'unité'),
('R132', 'Ruban imp1200 lignes', 25, 200, 182, 'unité');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `codart` char(4) NOT NULL,
  `numfou` varchar(25) NOT NULL,
  `deliv` smallint(6) DEFAULT NULL,
  `qte1` int(11) DEFAULT NULL,
  `prix1` varchar(50) DEFAULT NULL,
  `qte2` int(11) DEFAULT NULL,
  `prix2` varchar(50) DEFAULT NULL,
  `qte3` int(11) DEFAULT NULL,
  `prix3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`codart`, `numfou`, `deliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES
('B001', '08700', 15, 0, '150', 50, '145', 100, '185'),
('B002', '08700', 15, 0, '210', 50, '145', 100, '185'),
('D035', '00120', 0, 0, '40', NULL, NULL, NULL, NULL),
('D035', '09120', 5, 0, '40', 100, '30', NULL, NULL),
('I100', '00120', 90, 0, '700', 50, '600', 120, '500'),
('I100', '00540', 70, 0, '710', 60, '630', 100, '600'),
('I100', '09120', 60, 0, '800', 70, '600', 90, '500'),
('I100', '09150', 90, 0, '650', 90, '600', 200, '590'),
('I100', '09180', 30, 0, '720', 50, '670', 100, '490'),
('I105', '00120', 90, 10, '705', 50, '630', 120, '500'),
('I105', '00540', 70, 0, '810', 60, '645', 100, '600'),
('I105', '08700', 30, 0, '720', 50, '670', 100, '510'),
('I105', '09120', 8, 0, '37', NULL, NULL, NULL, NULL),
('I105', '09150', 90, 0, '685', 90, '600', 200, '590'),
('I108', '00120', 90, 5, '795', 30, '720', 100, '680'),
('I108', '09120', 60, 0, '920', 70, '820', 100, '780'),
('I110', '09120', 60, 0, '950', 70, '850', 90, '790'),
('I110', '09180', 90, 0, '900', 70, '870', 90, '835'),
('P220', '00120', 15, 0, '3700', 100, '3500', NULL, NULL),
('P220', '08700', 20, 50, '3500', 100, '3350', NULL, NULL),
('P230', '00120', 30, 0, '5200', 100, '5000', NULL, NULL),
('P230', '08700', 60, 0, '5000', 50, '4900', NULL, NULL),
('P240', '00120', 15, 0, '2200', 100, '2000', NULL, NULL),
('P250', '00120', 30, 0, '1500', 100, '1400', 500, '1200'),
('P250', '09120', 30, 0, '1500', 100, '1400', 500, '1200'),
('R080', '09120', 10, 0, '120', 100, '100', NULL, NULL),
('R132', '09120', 5, 0, '275', NULL, NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD PRIMARY KEY (`numcom`),
  ADD KEY `numfou` (`numfou`);

--
-- Index pour la table `fournis`
--
ALTER TABLE `fournis`
  ADD PRIMARY KEY (`numfou`);

--
-- Index pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD PRIMARY KEY (`numlig`,`numcom`),
  ADD KEY `codart` (`codart`),
  ADD KEY `numcom` (`numcom`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`codart`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`codart`,`numfou`),
  ADD KEY `numfou` (`numfou`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entcom`
--
ALTER TABLE `entcom`
  ADD CONSTRAINT `entcom_ibfk_1` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`);

--
-- Contraintes pour la table `ligcom`
--
ALTER TABLE `ligcom`
  ADD CONSTRAINT `ligcom_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`),
  ADD CONSTRAINT `ligcom_ibfk_2` FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`),
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
