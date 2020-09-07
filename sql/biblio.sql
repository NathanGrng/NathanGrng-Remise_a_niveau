-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 07 Septembre 2020 à 15:34
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `prenom` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `adrRue` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `adrCP` mediumint(5) DEFAULT NULL,
  `adrVille` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `mel` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`num`, `nom`, `prenom`, `adrRue`, `adrCP`, `adrVille`, `tel`, `mel`) VALUES
(1, 'Deltour', 'Charles', '4 rue du Pont', 95100, 'Argenteuil', '01...', 'cdeltour@hotmail.com'),
(2, 'Fime', 'Nadia', '5 rue du Montparnasse', 75006, 'Paris', '06...', NULL),
(3, 'Ertau', 'Frank', '4 Avenue du président Wilson', 94320, 'Cachan', '01...', 'frank.ertau@laposte.net'),
(4, 'Maneur', 'David', '6 rue Charles Péguy', 94000, 'Créteil', '01...', NULL),
(5, 'Berezovski', 'Sylvie', '18 rue du Château', 91150, 'Etampes', '01...', NULL),
(6, 'Finley', 'Pascale', '25 rue de Tolbiac', 75013, 'Paris', '01...', 'pascfinley@yahoo.fr'),
(7, 'Vofur', 'Hector', '18 rue Deparcieux', 75014, 'Paris', '01...', 'hvofur@free.fr'),
(8, 'Derzou', 'Fred', '230 avenue de la liberté', 93100, 'Montreuil-sous-bois', '01...', 'ouzala@aol.com'),
(9, 'Serty', 'Julie', '23 rue du Calvaire', 92800, 'Suresnes', '01...', NULL),
(10, 'Vofur', 'Victor', '18 rue Deparcieux', 75014, 'Paris', '01...', 'victor.vofur@laposte.net'),
(11, 'Calende', 'Hugo', '22 rue des jardins', 91000, 'Evry', '01...', NULL),
(12, 'Jemba', 'Hubert', '10 rue du 8 mai 1945', 78000, 'Versailles', '01...', 'jaimeba@yahoo.fr'),
(13, 'Morin', 'Séverine', '4 rue du bac', 93000, 'Saint Denis', '01...', 'morinsev@hotmail.com'),
(14, 'Benrech', 'Tarek', '79 rue de Sèvres', 95000, 'Nanterre', '01...', NULL),
(15, 'Nguyen', 'Marc', '53 impasse Tourneur', 91400, 'Orsay', '01...', 'nguyen774@wanadoo.fr'),
(16, 'Louali', 'Karima', '89 avenue Poincaré', 75001, 'Paris', '01...', 'kloua@caramail.fr'),
(17, 'Paolo', 'Marco', '14 rue du Caire', 91300, 'Massy', '01...', NULL),
(18, 'Map', 'Joanna', '120 boulevard Voltaire', 75012, 'Paris', '01...', NULL),
(19, 'Koundé', 'Fatoumata', '4 Place Carrée', 77000, 'Melun', '01...', NULL),
(20, 'Derissam', 'Bachir', '1 rue des Indes', 78550, 'Houdan', '01...', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE IF NOT EXISTS `auteur` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `prenom` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `numNationalite` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `auteur_fk_1` (`numNationalite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=34 ;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`num`, `nom`, `prenom`, `numNationalite`) VALUES
(1, 'Dostoeïvski', 'Fédor', 1),
(2, 'Semprun', 'Jorge', 2),
(3, 'Tolstoï', 'Leon', 1),
(4, 'Steinbeck', 'John', 3),
(5, 'Ferro', 'Marc', 4),
(6, 'Stocker', 'Bram', 5),
(7, 'Shelley', 'Marie', 6),
(8, 'King', 'Stephen', 3),
(9, 'Grass', 'Gunter', 7),
(10, 'Barjavel', 'René', 4),
(11, 'Simmons', 'Dan', 3),
(12, 'Herbert', 'Frank', 3),
(13, 'Clarke', 'Arthur C.', 6),
(14, 'Bradbury', 'Ray', 3),
(15, 'Dick', 'Philip K.', 3),
(16, 'Orwell', 'Georges', 6),
(17, 'Hugo', 'Victor', 4),
(18, 'Zola', 'Emile', 4),
(19, 'Morris', NULL, 8),
(20, 'Flaubert', 'Gustave', 4),
(21, 'Asimov', 'Isaac', 3),
(22, 'Miller', 'Frank', 3),
(23, 'Eco', 'Umberto', 9),
(24, 'Irving', 'John', 3),
(25, 'Braudel', 'Fernand', 4),
(26, 'Camus', 'Albert', 4),
(27, 'Vian', 'Boris', 4),
(28, 'Lehane', 'Dennis', 3),
(29, 'Oe', 'Kenzaburo', 10),
(30, 'Kertesz', 'Imre', 11),
(31, 'Garcia Marquez', 'Gabriel', 12),
(32, 'Pratt', 'Hugo', 9),
(33, 'Cooper', 'Fenimore', 3);

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE IF NOT EXISTS `continent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `continent`
--

INSERT INTO `continent` (`id`, `libelle`) VALUES
(1, 'Europe'),
(2, 'Amérique du nord'),
(3, 'Amérique du sud'),
(4, 'Asie'),
(5, 'Afrique'),
(6, 'Australie');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `num` tinyint(4) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`num`, `libelle`) VALUES
(1, 'Littérature'),
(2, 'Terreur'),
(3, 'Science-Fiction'),
(4, 'BD'),
(5, 'Essai'),
(6, 'Policier'),
(7, 'Roman contemporain');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE IF NOT EXISTS `livre` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(13) COLLATE utf8_bin NOT NULL,
  `titre` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `prix` float DEFAULT NULL,
  `editeur` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `annee` smallint(4) DEFAULT NULL,
  `langue` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `numAuteur` smallint(6) DEFAULT NULL,
  `numGenre` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `livre_fk_1` (`numAuteur`),
  KEY `livre_fk_2` (`numGenre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`num`, `isbn`, `titre`, `prix`, `editeur`, `annee`, `langue`, `numAuteur`, `numGenre`) VALUES
(1, '2-07-038692-6', 'Les fréres Karamazov', 7, 'Folio', 1880, 'Russe', 1, 1),
(2, '2-07-036893-9', 'Le Joueur', 5, 'Folio', 1866, 'Russe', 1, 1),
(3, '2-07-074049-8', 'L''écriture ou la vie', 15, 'Gallimard', 1994, 'Français', 2, 1),
(4, '2-07-036287-6', 'Guerre et Paix', 8, 'Folio', 1869, 'Russe', 3, 1),
(5, '2-07-036083-0', 'Les raisins de la colère', 6, 'Folio', 1947, 'Américain', 4, 1),
(6, '2-02-018381-1', 'Histoire des colonisations', 20, 'Seuil', 1994, 'Français', 5, 5),
(7, '2-266-05366-3', 'Dracula', 6, 'Pocket', 1897, 'Anglais', 6, 2),
(8, '2-501-00279-2', 'Frankenstein', 6, 'Marabout', 1818, 'Anglais', 7, 2),
(9, '2-277-21197-4', 'Shining', 6, 'J''ai Lu', 1977, 'Américain', 8, 2),
(10, '2-8001-1455-X', 'L''évasion des Dalton', 9, 'Dupuis', 1960, 'Français', 19, 4),
(11, '2-258-00139-0', 'La Nuit des temps', 6, 'Pocket', 1968, 'Français', 10, 3),
(12, '2-253-13862-2', 'Nuit d''été', 6, 'Albin Michel', 1991, 'Français', 11, 2),
(13, '2-266-02665-8', 'Dune', 6, 'Pocket', 1965, 'Américain', 12, 3),
(14, '2-290-00349-2', '2001 L''odyssée de l''espace', 5, 'J''ai Lu', 1968, 'Anglais', 13, 3),
(15, '2-207-30008-0', 'Fahrenheit 451', 5, 'Denoël', 1953, 'Américain', 14, 3),
(16, '2-277-21768-9', 'Blade Runner', 5, 'J''ai Lu', 1968, 'Américain', 15, 3),
(17, '2-8001-1452-5', 'Les cousins Dalton', 7, 'Dupuis', 1958, 'Français', 19, 4),
(18, '2-07-036822-X', '1984', 7, 'Folio', 1948, 'Anglais', 16, 1),
(19, '2-07-037093-3', 'Quatrevingt-treize', 6, 'Folio', 1874, 'Français', 17, 1),
(20, '2-266-08308-2', 'Les Misérables', 12, 'Folio', 1862, 'Français', 17, 1),
(21, '2-07-037001-1', 'Germinal', 7, 'Folio', 1885, 'Français', 18, 1),
(22, '2-07-037051-8', 'L''assommoir', 7, 'Folio', 1877, 'Français', 18, 1),
(23, '2-8001-1441-X', 'La mine d''or de Dick Digger', 9, 'Dargaud', 1949, 'Français', 19, 4),
(24, '2-234-04964-4', 'Lourdes', 15, 'Stock', 1894, 'Français', 18, 1),
(25, '2-234-04963-6', 'Paris', 15, 'Stock', 1898, 'Français', 18, 1),
(26, '2-8001-1457-6', 'Sur la piste des Dalton', 9, 'Dupuis', 1962, 'Français', 19, 4),
(27, '2-8001-1462-2', 'Les Dalton dans le blizzard', 9, 'Dupuis', 1963, 'Français', 19, 4),
(28, '2-205-00585-5', 'Ma Dalton', 9, 'Dargaud', 1971, 'Français', 19, 4),
(29, '2-234-049652', 'Rome', 15, 'Stock', 1896, 'Français', 18, 1),
(30, '2-02-031430-4', 'Le Tambour', 9, 'Seuil', 1959, 'Allemand', 9, 1),
(31, '2-8001-1471-1', 'Tortillas pour les Dalton', 9, 'Dupuis', 1967, 'Français', 19, 4),
(32, '2-070-30878-2', 'Salammbô', 8, 'Folio', 1862, 'Français', 20, 1),
(33, '2-207-30089-7', 'Fondation', 7, 'Denoël', 1951, 'Américain', 21, 3),
(34, '2-070-41311-X', 'Madame Bovary', 8, 'Folio', 1857, 'Français', 20, 1),
(35, '2-277-12453-2', 'Les robots', 5, 'J''ai Lu', 1950, 'Américain', 21, 3),
(36, '2-070-74277-6', 'Notes de Hiroshima', 11, 'Marabout', 1965, 'Japonais', 29, 5),
(37, '2-7427-1542-8', 'Etre sans destin', 9, 'Actes Sud', 1975, 'Hongrois', 30, 1),
(38, '2-020-23811-X', 'Cent ans de solitude', 6, 'Actes Sud', 1967, 'Espagnol', 31, 1),
(39, '2-253-00597-5', 'A l''Est d''Eden', 7, 'Le Livre de Poche', 1952, 'Américain', 4, 1),
(40, '2-02-036376-3', 'Le Monde selon Garp', 8, 'Seuil', 1976, 'Américain', 24, 7),
(41, '2-253-00333-8', 'Le Nom de la Rose', 6, 'Le Livre de Poche', 1980, 'Italien', 23, 1),
(42, '2-7436-1281-9', 'Mystic River', 9, 'Rivages', 2001, 'Américain', 28, 6),
(43, '2-070-36042-3', 'La Peste', 5, 'Folio', 1947, 'Français', 26, 1),
(44, '2-2531-4087-2', 'L''Ecume des Jours', 8, 'Folio', 1947, 'Français', 27, 7),
(45, '2-87827-038-X', 'Sin City', 11, 'Rackham', 1994, 'Américain', 22, 4),
(46, '2-203-34411-3', 'La Ballade de la Mer Salée', 14, 'Casterman', 1967, 'Italien', 32, 4),
(47, '2-253-06168-9', 'La Méditerranée', 8, 'Le Livre de Poche', 1949, 'Français', 25, 5),
(48, '2-08-070611-X', 'Le Dernier des Mohicans', 7, 'Marabout', 1826, 'Américain', 33, 1),
(49, '2-277-11830-3', 'Avant l''Eden', 6, 'J''ai Lu', 1974, 'Anglais', 13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `nationalite`
--

CREATE TABLE IF NOT EXISTS `nationalite` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `numContinent` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `numContinent` (`numContinent`),
  KEY `numContinent_2` (`numContinent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Contenu de la table `nationalite`
--

INSERT INTO `nationalite` (`num`, `libelle`, `numContinent`) VALUES
(1, 'Russe', 4),
(2, 'Espagnol', 1),
(3, 'Américain', 2),
(4, 'Français', 1),
(5, 'Irlandais', 1),
(6, 'Britannique', 1),
(7, 'Allemand', 1),
(8, 'Belge', 1),
(9, 'Italien', 1),
(10, 'Japonais', 4),
(11, 'Hongrois', 1),
(12, 'Colombien', 3),
(13, 'Chinois', 4),
(14, 'londonien(ne)', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pret`
--

CREATE TABLE IF NOT EXISTS `pret` (
  `num` smallint(6) NOT NULL AUTO_INCREMENT,
  `numLivre` smallint(6) NOT NULL DEFAULT '0',
  `numAdherent` smallint(6) NOT NULL DEFAULT '0',
  `datePret` date NOT NULL,
  `dateRetourPrevue` date NOT NULL,
  `dateRetourReelle` date DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `pret_fk_1` (`numLivre`),
  KEY `pret_fk_2` (`numAdherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=451 ;

--
-- Contenu de la table `pret`
--

INSERT INTO `pret` (`num`, `numLivre`, `numAdherent`, `datePret`, `dateRetourPrevue`, `dateRetourReelle`) VALUES
(1, 1, 1, '2013-06-02', '2013-06-16', '2013-06-16'),
(2, 1, 2, '2013-05-02', '2013-05-16', '2013-05-12'),
(3, 1, 3, '2013-05-13', '2013-05-27', '2013-05-22'),
(4, 1, 14, '2013-06-18', '2013-07-02', '2013-07-01'),
(5, 2, 5, '2013-05-22', '2013-06-05', '2013-06-04'),
(6, 2, 6, '2013-06-06', '2013-06-20', '2013-06-13'),
(7, 2, 14, '2013-05-04', '2013-05-18', '2013-05-20'),
(8, 3, 6, '2013-05-07', '2013-05-21', '2013-05-18'),
(9, 3, 7, '2013-05-19', '2013-06-02', '2013-06-02'),
(10, 3, 8, '2013-06-03', '2013-06-17', '2013-06-16'),
(11, 4, 9, '2013-05-10', '2013-05-24', '2013-05-19'),
(12, 4, 10, '2013-05-20', '2013-06-03', '2013-06-05'),
(13, 4, 11, '2013-06-06', '2013-06-20', '2013-06-21'),
(14, 5, 4, '2013-05-21', '2013-06-04', '2013-06-01'),
(15, 5, 5, '2013-05-13', '2013-05-27', '2013-05-20'),
(16, 5, 8, '2013-06-02', '2013-06-16', '2013-06-16'),
(17, 5, 14, '2013-06-18', '2013-07-02', '2013-06-29'),
(18, 6, 2, '2013-06-20', '2013-07-04', '2013-07-05'),
(19, 6, 4, '2013-08-15', '2013-08-29', '2013-08-28'),
(20, 6, 6, '2013-07-07', '2013-07-21', '2013-07-18'),
(21, 6, 7, '2013-05-16', '2013-05-30', '2013-05-25'),
(22, 6, 8, '2013-07-19', '2013-08-02', '2013-08-12'),
(23, 6, 9, '2013-05-26', '2013-06-09', '2013-06-11'),
(24, 6, 16, '2013-08-29', '2013-09-12', '2013-09-13'),
(25, 6, 16, '2013-09-14', '2013-09-28', '2013-09-30'),
(26, 7, 3, '2013-05-19', '2013-06-02', '2013-05-26'),
(27, 7, 3, '2013-07-10', '2013-07-24', '2013-07-21'),
(28, 7, 6, '2013-05-27', '2013-06-10', '2013-06-10'),
(29, 7, 7, '2013-07-22', '2013-08-05', '2013-08-07'),
(30, 7, 9, '2013-06-15', '2013-06-29', '2013-06-25'),
(31, 7, 13, '2013-06-30', '2013-07-14', '2013-07-09'),
(32, 8, 4, '2013-05-20', '2013-06-03', '2013-05-31'),
(33, 8, 6, '2013-09-01', '2013-09-15', '2013-09-15'),
(34, 8, 6, '2013-09-18', '2013-10-02', '2013-10-01'),
(35, 8, 7, '2013-06-03', '2013-06-17', '2013-06-27'),
(36, 8, 8, '2013-06-30', '2013-07-14', '2013-07-16'),
(37, 8, 8, '2013-10-03', '2013-10-17', '2013-10-12'),
(38, 8, 10, '2013-08-05', '2013-08-19', '2013-08-12'),
(39, 8, 16, '2013-07-19', '2013-08-02', '2013-08-03'),
(40, 8, 16, '2013-08-14', '2013-08-28', '2013-08-25'),
(41, 9, 7, '2013-08-02', '2013-08-16', '2013-08-11'),
(42, 9, 8, '2013-06-06', '2013-06-20', '2013-06-21'),
(43, 9, 8, '2013-07-04', '2013-07-18', '2013-07-15'),
(44, 9, 10, '2013-05-20', '2013-06-03', '2013-06-05'),
(45, 9, 11, '2013-06-21', '2013-07-05', '2013-06-28'),
(46, 9, 11, '2013-08-31', '2013-09-14', '2013-09-15'),
(47, 9, 12, '2013-08-13', '2013-08-27', '2013-08-29'),
(48, 9, 12, '2013-09-15', '2013-09-29', '2013-09-26'),
(49, 9, 12, '2013-10-01', '2013-10-15', NULL),
(50, 9, 15, '2013-07-16', '2013-07-30', '2013-07-30'),
(51, 10, 1, '2013-05-02', '2013-05-16', '2013-05-05'),
(52, 10, 1, '2013-05-05', '2013-05-19', '2013-05-06'),
(53, 10, 1, '2013-05-06', '2013-05-20', '2013-05-07'),
(54, 10, 1, '2013-05-07', '2013-05-21', '2013-05-08'),
(55, 10, 1, '2013-05-08', '2013-05-22', '2013-05-10'),
(56, 10, 1, '2013-05-10', '2013-05-24', '2013-05-10'),
(57, 10, 2, '2013-05-10', '2013-05-24', '2013-05-11'),
(58, 10, 2, '2013-05-11', '2013-05-25', '2013-05-12'),
(59, 10, 2, '2013-05-12', '2013-05-26', '2013-05-15'),
(60, 10, 2, '2013-05-15', '2013-05-29', '2013-05-18'),
(61, 10, 2, '2013-05-18', '2013-06-01', '2013-05-19'),
(62, 10, 2, '2013-05-19', '2013-06-02', '2013-05-20'),
(63, 10, 2, '2013-05-20', '2013-06-03', '2013-05-21'),
(64, 10, 2, '2013-05-21', '2013-06-04', '2013-05-22'),
(65, 10, 2, '2013-05-22', '2013-06-05', '2013-05-23'),
(66, 10, 2, '2013-05-23', '2013-06-06', '2013-05-24'),
(67, 10, 2, '2013-05-24', '2013-06-07', '2013-05-26'),
(68, 10, 2, '2013-05-26', '2013-06-09', '2013-05-27'),
(69, 10, 2, '2013-05-27', '2013-06-10', '2013-05-30'),
(70, 10, 3, '2013-05-30', '2013-06-13', '2013-05-30'),
(71, 10, 4, '2013-05-30', '2013-06-13', '2013-06-02'),
(72, 10, 4, '2013-06-02', '2013-06-16', '2013-06-04'),
(73, 10, 4, '2013-06-04', '2013-06-18', '2013-06-06'),
(74, 10, 4, '2013-06-06', '2013-06-20', '2013-06-07'),
(75, 10, 4, '2013-06-07', '2013-06-21', '2013-06-08'),
(76, 10, 4, '2013-06-08', '2013-06-22', '2013-06-09'),
(77, 10, 5, '2013-06-09', '2013-06-23', '2013-06-10'),
(78, 10, 5, '2013-06-10', '2013-06-24', '2013-06-11'),
(79, 10, 5, '2013-06-11', '2013-06-25', '2013-06-13'),
(80, 10, 5, '2013-06-13', '2013-06-27', '2013-06-16'),
(81, 10, 6, '2013-06-16', '2013-06-30', '2013-06-17'),
(82, 10, 6, '2013-06-17', '2013-07-01', '2013-06-18'),
(83, 10, 6, '2013-06-18', '2013-07-02', '2013-06-19'),
(84, 10, 6, '2013-06-19', '2013-07-03', '2013-06-20'),
(85, 10, 7, '2013-06-20', '2013-07-04', '2013-06-21'),
(86, 10, 7, '2013-06-21', '2013-07-05', '2013-06-23'),
(87, 10, 7, '2013-06-23', '2013-07-07', '2013-06-26'),
(88, 10, 7, '2013-06-26', '2013-07-10', '2013-06-27'),
(89, 10, 7, '2013-06-27', '2013-07-11', '2013-06-28'),
(90, 10, 7, '2013-06-28', '2013-07-12', '2013-06-29'),
(91, 10, 7, '2013-06-29', '2013-07-13', '2013-06-30'),
(92, 10, 7, '2013-06-30', '2013-07-14', '2013-07-01'),
(93, 10, 7, '2013-07-01', '2013-07-15', '2013-07-03'),
(94, 10, 8, '2013-07-03', '2013-07-17', '2013-07-06'),
(95, 10, 8, '2013-07-06', '2013-07-20', '2013-07-07'),
(96, 10, 8, '2013-07-07', '2013-07-21', '2013-07-08'),
(97, 10, 8, '2013-07-08', '2013-07-22', '2013-07-09'),
(98, 10, 8, '2013-07-09', '2013-07-23', '2013-07-10'),
(99, 10, 8, '2013-07-10', '2013-07-24', '2013-07-11'),
(100, 10, 8, '2013-07-11', '2013-07-25', '2013-07-13'),
(101, 10, 8, '2013-07-13', '2013-07-27', '2013-07-16'),
(102, 10, 8, '2013-07-16', '2013-07-30', '2013-07-17'),
(103, 10, 8, '2013-07-17', '2013-07-31', '2013-07-18'),
(104, 10, 9, '2013-07-18', '2013-08-01', '2013-07-19'),
(105, 10, 9, '2013-07-19', '2013-08-02', '2013-07-20'),
(106, 10, 9, '2013-07-20', '2013-08-03', '2013-07-21'),
(107, 10, 9, '2013-07-21', '2013-08-04', '2013-07-23'),
(108, 10, 9, '2013-07-23', '2013-08-06', '2013-07-26'),
(109, 10, 9, '2013-07-26', '2013-08-09', '2013-07-27'),
(110, 10, 10, '2013-07-27', '2013-08-10', '2013-07-28'),
(111, 10, 10, '2013-07-28', '2013-08-11', '2013-07-29'),
(112, 10, 10, '2013-07-29', '2013-08-12', '2013-07-30'),
(113, 10, 10, '2013-07-30', '2013-08-13', '2013-07-31'),
(114, 10, 10, '2013-07-31', '2013-08-14', '2013-08-02'),
(115, 10, 10, '2013-08-02', '2013-08-16', '2013-08-05'),
(116, 10, 10, '2013-08-05', '2013-08-19', '2013-08-06'),
(117, 10, 11, '2013-08-06', '2013-08-20', '2013-08-07'),
(118, 10, 11, '2013-08-07', '2013-08-21', '2013-08-08'),
(119, 10, 11, '2013-08-08', '2013-08-22', '2013-08-09'),
(120, 10, 11, '2013-08-09', '2013-08-23', '2013-08-10'),
(121, 10, 11, '2013-08-10', '2013-08-24', '2013-08-12'),
(122, 10, 12, '2013-08-12', '2013-08-26', '2013-08-15'),
(123, 10, 12, '2013-08-15', '2013-08-29', '2013-08-16'),
(124, 10, 12, '2013-08-16', '2013-08-30', '2013-08-17'),
(125, 10, 12, '2013-08-17', '2013-08-31', '2013-08-18'),
(126, 10, 12, '2013-08-18', '2013-09-01', '2013-08-19'),
(127, 10, 12, '2013-08-19', '2013-09-02', '2013-08-20'),
(128, 10, 12, '2013-08-20', '2013-09-03', '2013-08-22'),
(129, 10, 13, '2013-08-22', '2013-09-05', '2013-08-25'),
(130, 10, 13, '2013-08-25', '2013-09-08', '2013-08-26'),
(131, 10, 13, '2013-08-26', '2013-09-09', '2013-08-27'),
(132, 10, 13, '2013-08-27', '2013-09-10', '2013-08-28'),
(133, 10, 13, '2013-08-28', '2013-09-11', '2013-08-29'),
(134, 10, 13, '2013-08-29', '2013-09-12', '2013-08-30'),
(135, 10, 14, '2013-08-30', '2013-09-13', '2013-09-01'),
(136, 10, 14, '2013-09-01', '2013-09-15', '2013-09-04'),
(137, 10, 14, '2013-09-04', '2013-09-18', '2013-09-05'),
(138, 10, 14, '2013-09-05', '2013-09-19', '2013-09-06'),
(139, 10, 14, '2013-09-06', '2013-09-20', '2013-09-07'),
(140, 10, 14, '2013-09-07', '2013-09-21', '2013-09-08'),
(141, 10, 14, '2013-09-08', '2013-09-22', '2013-09-09'),
(142, 10, 14, '2013-09-09', '2013-09-23', '2013-09-11'),
(143, 10, 14, '2013-09-11', '2013-09-25', '2013-09-14'),
(144, 10, 14, '2013-09-14', '2013-09-28', '2013-09-15'),
(145, 10, 14, '2013-09-15', '2013-09-29', '2013-09-16'),
(146, 10, 14, '2013-09-16', '2013-09-30', '2013-09-17'),
(147, 10, 15, '2013-09-17', '2013-10-01', '2013-09-18'),
(148, 10, 15, '2013-09-18', '2013-10-02', '2013-09-19'),
(149, 10, 15, '2013-09-19', '2013-10-03', '2013-09-21'),
(150, 10, 15, '2013-09-21', '2013-10-05', '2013-09-24'),
(151, 10, 15, '2013-09-24', '2013-10-08', '2013-09-25'),
(152, 10, 15, '2013-09-25', '2013-10-09', '2013-09-26'),
(153, 10, 15, '2013-09-26', '2013-10-10', '2013-09-27'),
(154, 10, 15, '2013-09-27', '2013-10-11', '2013-09-28'),
(155, 11, 1, '2013-05-10', '2013-05-24', '2013-05-23'),
(156, 11, 4, '2013-07-12', '2013-07-26', '2013-07-21'),
(157, 11, 4, '2013-07-22', '2013-08-05', '2013-08-02'),
(158, 11, 5, '2013-08-05', '2013-08-19', '2013-08-12'),
(159, 11, 9, '2013-09-13', '2013-09-27', '2013-09-29'),
(160, 11, 12, '2013-07-03', '2013-07-17', '2013-07-10'),
(161, 11, 14, '2013-10-03', '2013-10-17', '2013-10-07'),
(162, 12, 3, '2013-06-20', '2013-07-04', '2013-06-29'),
(163, 12, 3, '2013-07-03', '2013-07-17', '2013-07-12'),
(164, 12, 4, '2013-08-12', '2013-08-26', '2013-08-27'),
(165, 12, 6, '2013-06-10', '2013-06-24', '2013-06-19'),
(166, 12, 8, '2013-05-04', '2013-05-18', '2013-05-13'),
(167, 12, 8, '2013-07-24', '2013-08-07', '2013-08-09'),
(168, 12, 8, '2013-08-29', '2013-09-12', '2013-09-05'),
(169, 12, 10, '2013-05-25', '2013-06-08', '2013-06-09'),
(170, 12, 11, '2013-05-14', '2013-05-28', '2013-05-24'),
(171, 12, 11, '2013-09-07', '2013-09-21', '2013-09-18'),
(172, 12, 12, '2013-07-12', '2013-07-26', '2013-07-23'),
(173, 12, 12, '2013-09-20', '2013-10-04', '2013-09-30'),
(174, 12, 12, '2013-10-04', '2013-10-18', NULL),
(175, 13, 5, '2013-06-25', '2013-07-09', '2013-07-09'),
(176, 13, 5, '2013-09-03', '2013-09-17', '2013-09-10'),
(177, 13, 6, '2013-08-29', '2013-09-12', '2013-09-01'),
(178, 13, 7, '2013-07-10', '2013-07-24', '2013-07-25'),
(179, 13, 8, '2013-05-04', '2013-05-18', '2013-05-20'),
(180, 13, 8, '2013-08-05', '2013-08-19', '2013-08-20'),
(181, 13, 8, '2013-08-21', '2013-09-04', '2013-08-28'),
(182, 13, 10, '2013-06-05', '2013-06-19', '2013-06-12'),
(183, 13, 13, '2013-05-21', '2013-06-04', '2013-06-04'),
(184, 13, 13, '2013-06-13', '2013-06-27', '2013-06-24'),
(185, 13, 13, '2013-07-26', '2013-08-09', '2013-08-05'),
(186, 14, 1, '2013-06-13', '2013-06-27', '2013-06-24'),
(187, 14, 3, '2013-07-26', '2013-08-09', '2013-08-05'),
(188, 14, 4, '2013-06-25', '2013-07-09', '2013-07-09'),
(189, 14, 4, '2013-10-04', '2013-10-18', NULL),
(190, 14, 7, '2013-06-05', '2013-06-19', '2013-06-12'),
(191, 14, 8, '2013-08-05', '2013-08-19', '2013-08-20'),
(192, 14, 8, '2013-09-07', '2013-09-21', '2013-09-18'),
(193, 14, 9, '2013-07-10', '2013-07-24', '2013-07-25'),
(194, 14, 13, '2013-05-21', '2013-06-04', '2013-06-04'),
(195, 14, 13, '2013-09-20', '2013-10-04', '2013-09-30'),
(196, 15, 2, '2013-09-07', '2013-09-21', '2013-09-21'),
(197, 15, 3, '2013-09-23', '2013-10-07', '2013-09-30'),
(198, 15, 6, '2013-05-22', '2013-06-05', '2013-06-05'),
(199, 15, 6, '2013-06-17', '2013-07-01', '2013-06-26'),
(200, 15, 8, '2013-06-28', '2013-07-12', '2013-07-13'),
(201, 15, 9, '2013-07-15', '2013-07-29', '2013-07-31'),
(202, 15, 9, '2013-08-24', '2013-09-07', '2013-09-04'),
(203, 15, 10, '2013-10-04', '2013-10-18', NULL),
(204, 15, 13, '2013-06-06', '2013-06-20', '2013-06-13'),
(205, 15, 13, '2013-08-04', '2013-08-18', '2013-08-20'),
(206, 16, 2, '2013-05-07', '2013-05-21', '2013-05-18'),
(207, 16, 5, '2013-06-05', '2013-06-19', '2013-06-12'),
(208, 16, 6, '2013-06-13', '2013-06-27', '2013-06-24'),
(209, 16, 7, '2013-09-07', '2013-09-21', '2013-09-18'),
(210, 16, 8, '2013-07-26', '2013-08-09', '2013-08-05'),
(211, 16, 10, '2013-06-25', '2013-07-09', '2013-07-09'),
(212, 16, 10, '2013-07-10', '2013-07-24', '2013-07-25'),
(213, 16, 14, '2013-08-05', '2013-08-19', '2013-08-20'),
(214, 16, 15, '2013-09-20', '2013-10-04', '2013-09-30'),
(215, 16, 15, '2013-10-04', '2013-10-18', NULL),
(216, 17, 1, '2013-09-07', '2013-09-21', '2013-09-21'),
(217, 17, 7, '2013-10-15', '2013-10-29', NULL),
(218, 17, 9, '2013-05-22', '2013-06-05', '2013-06-05'),
(219, 17, 9, '2013-08-04', '2013-08-18', '2013-08-20'),
(220, 17, 10, '2013-06-17', '2013-07-01', '2013-06-26'),
(221, 17, 10, '2013-06-28', '2013-07-12', '2013-07-13'),
(222, 17, 10, '2013-08-24', '2013-09-07', '2013-09-04'),
(223, 17, 11, '2013-06-06', '2013-06-20', '2013-06-13'),
(224, 17, 11, '2013-09-23', '2013-10-07', '2013-09-30'),
(225, 17, 12, '2013-07-15', '2013-07-29', '2013-07-31'),
(226, 18, 5, '2013-06-12', '2013-06-26', '2013-06-26'),
(227, 18, 6, '2013-09-18', '2013-10-02', '2013-09-28'),
(228, 18, 7, '2013-10-03', '2013-10-17', '2013-10-19'),
(229, 18, 8, '2013-06-03', '2013-06-17', '2013-06-12'),
(230, 18, 8, '2013-08-08', '2013-08-22', '2013-08-15'),
(231, 18, 9, '2013-07-28', '2013-08-11', '2013-08-06'),
(232, 18, 9, '2013-09-01', '2013-09-15', '2013-09-15'),
(233, 18, 10, '2013-07-13', '2013-07-27', '2013-07-27'),
(234, 18, 11, '2013-05-20', '2013-06-03', '2013-06-03'),
(235, 18, 13, '2013-06-27', '2013-07-11', '2013-07-04'),
(236, 18, 15, '2013-07-05', '2013-07-19', '2013-07-12'),
(237, 18, 15, '2013-08-16', '2013-08-30', '2013-08-25'),
(238, 19, 2, '2013-07-15', '2013-07-29', '2013-07-31'),
(239, 19, 3, '2013-05-23', '2013-06-06', '2013-06-08'),
(240, 19, 8, '2013-09-23', '2013-10-07', '2013-09-30'),
(241, 19, 9, '2013-08-04', '2013-08-18', '2013-08-20'),
(242, 19, 9, '2013-08-24', '2013-09-07', '2013-09-04'),
(243, 19, 10, '2013-05-13', '2013-05-27', '2013-05-20'),
(244, 19, 12, '2013-09-07', '2013-09-21', '2013-09-21'),
(245, 19, 16, '2013-06-13', '2013-06-27', '2013-06-24'),
(246, 19, 16, '2013-10-04', '2013-10-18', NULL),
(247, 20, 1, '2013-06-06', '2013-06-20', '2013-06-15'),
(248, 20, 6, '2013-08-04', '2013-08-18', '2013-08-14'),
(249, 20, 7, '2013-08-24', '2013-09-07', '2013-09-08'),
(250, 20, 8, '2013-06-17', '2013-07-01', '2013-07-01'),
(251, 20, 10, '2013-05-22', '2013-06-05', '2013-05-29'),
(252, 20, 10, '2013-07-15', '2013-07-29', '2013-07-30'),
(253, 20, 10, '2013-09-23', '2013-10-07', '2013-10-03'),
(254, 20, 10, '2013-10-04', '2013-10-18', NULL),
(255, 21, 1, '2013-06-20', '2013-07-04', '2013-07-06'),
(256, 21, 2, '2013-07-26', '2013-08-09', '2013-08-06'),
(257, 21, 5, '2013-08-27', '2013-09-10', '2013-09-03'),
(258, 21, 6, '2013-08-09', '2013-08-23', '2013-08-23'),
(259, 21, 11, '2013-05-07', '2013-05-21', '2013-05-16'),
(260, 21, 11, '2013-07-07', '2013-07-21', '2013-07-23'),
(261, 21, 11, '2013-09-07', '2013-09-21', '2013-09-22'),
(262, 21, 12, '2013-06-05', '2013-06-19', '2013-06-19'),
(263, 22, 1, '2013-05-02', '2013-05-16', '2013-05-09'),
(264, 22, 5, '2013-08-08', '2013-08-22', '2013-08-15'),
(265, 22, 7, '2013-09-01', '2013-09-15', '2013-09-15'),
(266, 22, 11, '2013-05-12', '2013-05-26', '2013-05-19'),
(267, 22, 12, '2013-09-18', '2013-10-02', '2013-09-28'),
(268, 22, 16, '2013-08-16', '2013-08-30', '2013-08-25'),
(269, 23, 4, '2013-09-01', '2013-09-15', '2013-09-17'),
(270, 23, 6, '2013-07-28', '2013-08-11', '2013-08-04'),
(271, 23, 6, '2013-08-14', '2013-08-28', '2013-08-28'),
(272, 23, 10, '2013-07-09', '2013-07-23', '2013-07-23'),
(273, 23, 12, '2013-05-02', '2013-05-16', '2013-05-18'),
(274, 23, 12, '2013-05-20', '2013-06-03', '2013-05-27'),
(275, 23, 12, '2013-09-18', '2013-10-02', '2013-09-25'),
(276, 23, 12, '2013-10-03', '2013-10-17', '2013-10-13'),
(277, 23, 15, '2013-06-22', '2013-07-06', '2013-07-07'),
(278, 23, 15, '2013-07-24', '2013-08-07', '2013-07-26'),
(279, 23, 16, '2013-06-03', '2013-06-17', '2013-06-18'),
(280, 24, 3, '2013-10-03', '2013-10-17', '2013-10-18'),
(281, 24, 6, '2013-05-16', '2013-05-30', '2013-05-27'),
(282, 24, 7, '2013-05-28', '2013-06-11', '2013-06-06'),
(283, 24, 8, '2013-06-07', '2013-06-21', '2013-06-22'),
(284, 24, 9, '2013-08-07', '2013-08-21', '2013-08-18'),
(285, 24, 13, '2013-07-07', '2013-07-21', '2013-07-21'),
(286, 24, 13, '2013-08-19', '2013-09-02', '2013-08-26'),
(287, 24, 13, '2013-09-09', '2013-09-23', '2013-10-03'),
(288, 24, 14, '2013-07-22', '2013-08-05', '2013-08-06'),
(289, 24, 15, '2013-08-30', '2013-09-13', '2013-09-06'),
(290, 25, 3, '2013-06-03', '2013-06-17', '2013-06-19'),
(291, 25, 7, '2013-05-17', '2013-05-31', '2013-05-31'),
(292, 25, 7, '2013-06-22', '2013-07-06', '2013-06-29'),
(293, 25, 7, '2013-07-16', '2013-07-30', '2013-07-23'),
(294, 25, 8, '2013-07-27', '2013-08-10', '2013-08-10'),
(295, 25, 8, '2013-09-11', '2013-09-25', '2013-09-25'),
(296, 25, 9, '2013-08-29', '2013-09-12', '2013-09-08'),
(297, 25, 15, '2013-08-12', '2013-08-26', '2013-08-28'),
(298, 26, 2, '2013-05-18', '2013-06-01', '2013-06-02'),
(299, 26, 3, '2013-06-04', '2013-06-18', '2013-06-13'),
(300, 26, 7, '2013-07-17', '2013-07-31', '2013-07-28'),
(301, 26, 9, '2013-06-14', '2013-06-28', '2013-06-25'),
(302, 26, 12, '2013-08-15', '2013-08-29', '2013-09-08'),
(303, 26, 15, '2013-07-30', '2013-08-13', '2013-08-14'),
(304, 27, 1, '2013-05-19', '2013-06-02', '2013-05-26'),
(305, 27, 2, '2013-05-27', '2013-06-10', '2013-06-12'),
(306, 27, 9, '2013-06-14', '2013-06-28', '2013-06-28'),
(307, 28, 1, '2013-05-20', '2013-06-03', '2013-06-04'),
(308, 28, 6, '2013-06-07', '2013-06-21', '2013-06-18'),
(309, 28, 8, '2013-06-20', '2013-07-04', '2013-06-29'),
(310, 29, 3, '2013-06-10', '2013-06-24', '2013-06-26'),
(311, 29, 6, '2013-05-07', '2013-05-21', '2013-05-21'),
(312, 29, 16, '2013-05-21', '2013-06-04', '2013-05-28'),
(313, 30, 2, '2013-07-09', '2013-07-23', '2013-07-24'),
(314, 30, 6, '2013-05-22', '2013-06-05', '2013-06-02'),
(315, 30, 7, '2013-06-12', '2013-06-26', '2013-07-06'),
(316, 31, 1, '2013-05-22', '2013-06-05', '2013-05-29'),
(317, 31, 7, '2013-06-03', '2013-06-17', '2013-06-17'),
(318, 31, 8, '2013-06-19', '2013-07-03', '2013-06-29'),
(319, 31, 9, '2013-05-04', '2013-05-18', '2013-05-20'),
(320, 32, 11, '2013-05-21', '2013-06-04', '2013-06-01'),
(321, 32, 11, '2013-06-22', '2013-07-06', '2013-07-06'),
(322, 32, 11, '2013-08-04', '2013-08-18', '2013-08-15'),
(323, 32, 13, '2013-06-03', '2013-06-17', '2013-06-19'),
(324, 32, 13, '2013-07-08', '2013-07-22', '2013-07-21'),
(325, 32, 15, '2013-07-24', '2013-08-07', '2013-07-31'),
(326, 32, 15, '2013-08-15', '2013-08-29', '2013-08-28'),
(327, 32, 16, '2013-09-01', '2013-09-15', '2013-09-11'),
(328, 33, 12, '2013-05-03', '2013-05-17', '2013-05-13'),
(329, 33, 12, '2013-06-18', '2013-07-02', '2013-06-25'),
(330, 33, 12, '2013-07-06', '2013-07-20', '2013-07-20'),
(331, 33, 14, '2013-06-07', '2013-06-21', '2013-06-16'),
(332, 33, 14, '2013-08-29', '2013-09-12', '2013-09-13'),
(333, 33, 16, '2013-05-15', '2013-05-29', '2013-05-31'),
(334, 33, 16, '2013-07-24', '2013-08-07', '2013-08-04'),
(335, 34, 11, '2013-05-07', '2013-05-21', '2013-05-18'),
(336, 34, 11, '2013-06-22', '2013-07-06', '2013-07-01'),
(337, 34, 13, '2013-06-03', '2013-06-17', '2013-06-12'),
(338, 34, 13, '2013-07-24', '2013-08-07', '2013-08-07'),
(339, 34, 13, '2013-08-09', '2013-08-23', '2013-08-25'),
(340, 34, 15, '2013-07-08', '2013-07-22', '2013-07-24'),
(341, 34, 15, '2013-08-29', '2013-09-12', '2013-09-14'),
(342, 35, 12, '2013-05-02', '2013-05-16', '2013-05-16'),
(343, 35, 12, '2013-08-11', '2013-08-25', '2013-09-04'),
(344, 35, 14, '2013-05-27', '2013-06-10', '2013-06-11'),
(345, 35, 14, '2013-06-27', '2013-07-11', '2013-07-07'),
(346, 35, 14, '2013-07-09', '2013-07-23', '2013-07-24'),
(347, 35, 15, '2013-09-16', '2013-09-30', '2013-10-01'),
(348, 35, 16, '2013-05-19', '2013-06-02', '2013-05-26'),
(349, 35, 16, '2013-06-12', '2013-06-26', '2013-06-27'),
(350, 35, 16, '2013-10-03', '2013-10-17', '2013-10-17'),
(351, 36, 8, '2013-05-13', '2013-05-27', '2013-05-22'),
(352, 36, 13, '2013-06-02', '2013-06-16', '2013-06-16'),
(353, 36, 17, '2013-05-12', '2013-05-26', '2013-05-12'),
(354, 36, 18, '2013-06-18', '2013-07-02', '2013-07-01'),
(355, 37, 10, '2013-05-22', '2013-06-05', '2013-06-04'),
(356, 37, 11, '2013-06-06', '2013-06-20', '2013-06-13'),
(357, 37, 20, '2013-05-10', '2013-05-24', '2013-05-20'),
(358, 38, 11, '2013-05-19', '2013-06-02', '2013-06-02'),
(359, 38, 12, '2013-05-07', '2013-05-21', '2013-05-18'),
(360, 38, 12, '2013-06-03', '2013-06-17', '2013-06-16'),
(361, 39, 11, '2013-05-20', '2013-06-03', '2013-06-05'),
(362, 39, 12, '2013-06-06', '2013-06-20', '2013-06-21'),
(363, 39, 20, '2013-05-10', '2013-05-24', '2013-05-19'),
(364, 40, 13, '2013-05-21', '2013-06-04', '2013-06-01'),
(365, 40, 14, '2013-05-19', '2013-06-02', '2013-05-20'),
(366, 40, 15, '2013-06-18', '2013-07-02', '2013-06-29'),
(367, 40, 17, '2013-06-02', '2013-06-16', '2013-06-16'),
(368, 41, 11, '2013-06-03', '2013-06-17', '2013-06-11'),
(369, 41, 12, '2013-09-09', '2013-09-23', '2013-09-13'),
(370, 41, 13, '2013-09-14', '2013-09-28', '2013-09-30'),
(371, 41, 16, '2013-06-20', '2013-07-04', '2013-07-05'),
(372, 41, 16, '2013-10-01', '2013-10-15', NULL),
(373, 41, 18, '2013-08-15', '2013-08-29', '2013-08-28'),
(374, 41, 19, '2013-08-29', '2013-09-12', '2013-09-08'),
(375, 41, 20, '2013-07-19', '2013-08-02', '2013-08-12'),
(376, 42, 14, '2013-05-19', '2013-06-02', '2013-05-26'),
(377, 42, 15, '2013-08-08', '2013-08-22', '2013-08-11'),
(378, 42, 16, '2013-06-30', '2013-07-14', '2013-07-09'),
(379, 42, 16, '2013-07-22', '2013-08-05', '2013-08-07'),
(380, 42, 17, '2013-07-10', '2013-07-24', '2013-07-21'),
(381, 42, 18, '2013-08-12', '2013-08-26', '2013-08-26'),
(382, 43, 11, '2013-09-18', '2013-10-02', '2013-10-01'),
(383, 43, 12, '2013-10-13', '2013-10-27', '2013-10-14'),
(384, 43, 13, '2013-06-30', '2013-07-14', '2013-07-16'),
(385, 43, 14, '2013-10-03', '2013-10-17', '2013-10-12'),
(386, 43, 15, '2013-08-12', '2013-08-26', '2013-08-14'),
(387, 43, 16, '2013-08-14', '2013-08-28', '2013-08-25'),
(388, 43, 17, '2013-10-14', '2013-10-28', NULL),
(389, 43, 19, '2013-05-20', '2013-06-03', '2013-05-31'),
(390, 43, 20, '2013-09-01', '2013-09-15', '2013-09-15'),
(391, 44, 11, '2013-06-21', '2013-07-05', '2013-06-28'),
(392, 44, 12, '2013-08-31', '2013-09-14', '2013-09-15'),
(393, 44, 13, '2013-09-22', '2013-10-06', '2013-09-27'),
(394, 44, 14, '2013-09-15', '2013-09-29', '2013-09-20'),
(395, 44, 15, '2013-10-08', '2013-10-22', NULL),
(396, 44, 16, '2013-08-12', '2013-08-26', '2013-08-24'),
(397, 44, 17, '2013-09-28', '2013-10-12', '2013-10-08'),
(398, 44, 18, '2013-08-02', '2013-08-16', '2013-08-11'),
(399, 44, 19, '2013-07-04', '2013-07-18', '2013-07-15'),
(400, 44, 20, '2013-07-16', '2013-07-30', '2013-08-01'),
(401, 45, 11, '2013-05-12', '2013-05-26', '2013-05-15'),
(402, 45, 11, '2013-06-11', '2013-06-25', '2013-06-13'),
(403, 45, 11, '2013-09-18', '2013-10-02', '2013-09-19'),
(404, 45, 12, '2013-05-18', '2013-06-01', '2013-05-19'),
(405, 45, 12, '2013-06-16', '2013-06-30', '2013-06-17'),
(406, 45, 12, '2013-09-24', '2013-10-08', '2013-09-25'),
(407, 45, 13, '2013-05-20', '2013-06-03', '2013-05-21'),
(408, 45, 13, '2013-06-19', '2013-07-03', '2013-06-20'),
(409, 45, 14, '2013-05-21', '2013-06-04', '2013-05-22'),
(410, 45, 14, '2013-06-21', '2013-07-05', '2013-06-23'),
(411, 45, 15, '2013-05-24', '2013-06-07', '2013-05-26'),
(412, 45, 15, '2013-07-30', '2013-08-13', '2013-07-31'),
(413, 45, 16, '2013-05-02', '2013-05-16', '2013-05-05'),
(414, 45, 16, '2013-05-07', '2013-05-21', '2013-05-08'),
(415, 45, 16, '2013-05-27', '2013-06-10', '2013-05-30'),
(416, 45, 16, '2013-06-04', '2013-06-18', '2013-06-06'),
(417, 45, 16, '2013-08-05', '2013-08-19', '2013-08-06'),
(418, 45, 16, '2013-08-10', '2013-08-24', '2013-08-12'),
(419, 45, 17, '2013-05-23', '2013-06-06', '2013-05-24'),
(420, 45, 17, '2013-06-26', '2013-07-10', '2013-06-27'),
(421, 45, 18, '2013-05-06', '2013-05-20', '2013-05-07'),
(422, 45, 18, '2013-05-30', '2013-06-13', '2013-06-02'),
(423, 45, 18, '2013-08-07', '2013-08-21', '2013-08-08'),
(424, 45, 19, '2013-05-10', '2013-05-24', '2013-05-10'),
(425, 45, 19, '2013-06-07', '2013-06-21', '2013-06-08'),
(426, 45, 19, '2013-09-14', '2013-09-28', '2013-09-15'),
(427, 45, 20, '2013-05-10', '2013-05-24', '2013-05-11'),
(428, 45, 20, '2013-06-09', '2013-06-23', '2013-06-10'),
(429, 45, 20, '2013-09-16', '2013-09-30', '2013-09-17'),
(430, 46, 13, '2013-05-10', '2013-05-24', '2013-05-23'),
(431, 46, 14, '2013-07-12', '2013-07-26', '2013-07-21'),
(432, 46, 15, '2013-08-05', '2013-08-19', '2013-08-12'),
(433, 46, 16, '2013-09-13', '2013-09-27', '2013-09-29'),
(434, 46, 16, '2013-10-09', '2013-10-23', NULL),
(435, 46, 17, '2013-07-22', '2013-08-05', '2013-08-02'),
(436, 46, 18, '2013-10-01', '2013-10-15', '2013-10-07'),
(437, 47, 11, '2013-08-12', '2013-08-26', '2013-08-27'),
(438, 47, 12, '2013-08-28', '2013-09-11', '2013-08-29'),
(439, 47, 13, '2013-06-30', '2013-07-14', '2013-07-13'),
(440, 47, 14, '2013-07-24', '2013-08-07', '2013-08-09'),
(441, 47, 15, '2013-10-02', '2013-10-16', '2013-10-04'),
(442, 47, 16, '2013-09-19', '2013-10-03', '2013-09-20'),
(443, 47, 16, '2013-09-20', '2013-10-04', '2013-09-24'),
(444, 47, 17, '2013-08-29', '2013-09-12', '2013-09-05'),
(445, 47, 18, '2013-09-07', '2013-09-21', '2013-09-18'),
(446, 47, 19, '2013-06-20', '2013-07-04', '2013-06-29'),
(447, 47, 19, '2013-09-25', '2013-10-09', '2013-09-30'),
(448, 47, 20, '2013-07-13', '2013-07-27', '2013-07-21'),
(449, 47, 20, '2013-10-04', '2013-10-18', NULL),
(450, 48, 17, '2013-10-15', '2013-10-29', NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD CONSTRAINT `auteur_fk_1` FOREIGN KEY (`numNationalite`) REFERENCES `nationalite` (`num`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_fk_1` FOREIGN KEY (`numAuteur`) REFERENCES `auteur` (`num`),
  ADD CONSTRAINT `livre_fk_2` FOREIGN KEY (`numGenre`) REFERENCES `genre` (`num`);

--
-- Contraintes pour la table `nationalite`
--
ALTER TABLE `nationalite`
  ADD CONSTRAINT `nationalite_ibfk_1` FOREIGN KEY (`numContinent`) REFERENCES `continent` (`id`);

--
-- Contraintes pour la table `pret`
--
ALTER TABLE `pret`
  ADD CONSTRAINT `pret_fk_1` FOREIGN KEY (`numLivre`) REFERENCES `livre` (`num`),
  ADD CONSTRAINT `pret_fk_2` FOREIGN KEY (`numAdherent`) REFERENCES `adherent` (`num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
