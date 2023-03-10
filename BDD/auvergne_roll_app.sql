-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2022 at 09:10 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auvergne_roll_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `Id_utilisateur` int NOT NULL,
  `Id_instance_de_partie` int NOT NULL,
  `Id_fiche_personnage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`Id_utilisateur`, `Id_instance_de_partie`, `Id_fiche_personnage`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `appartient`
--

CREATE TABLE `appartient` (
  `Id_systeme_jeux` int NOT NULL,
  `Id_race` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appartient`
--

INSERT INTO `appartient` (`Id_systeme_jeux`, `Id_race`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bestiaire`
--

CREATE TABLE `bestiaire` (
  `Id_bestiaire` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `type` varchar(254) DEFAULT NULL,
  `taille` varchar(45) DEFAULT NULL,
  `langues` varchar(254) DEFAULT NULL,
  `sens` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text,
  `is_legendaire` tinyint(1) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `html` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bestiaire`
--

INSERT INTO `bestiaire` (`Id_bestiaire`, `nom`, `type`, `taille`, `langues`, `sens`, `description`, `is_legendaire`, `image`, `html`) VALUES
(1, 'Aboleth', 'Aberration', 'Grande', 'Profond, t??l??pathie 36m', 'vision dans le noir 36m, perception passive 20', 'Amphibien. \r\n      L\'aboleth peut respirer aussi bien dans l\'air que sous l\'eau.Nuage de mucus. Lorsqu\'il est sous l\'eau, l\'aboleth est entour?? d\'un mucus alt??rant. Une cr??ature qui touche l\'aboleth ou qui le frappe lors d\'une attaque au corps ?? corps en se trouvant ?? 1,50 m??tre ou moins de lui, doit effectuer un jet de sauvegarde de Constitution DD 14. Si elle l\'??choue, la cr??ature tombe malade pour les 1d4 prochaines heures. Une cr??ature malade ne peut respirer que sous l\'eau.', NULL, './images/bestiaire/aboleth.jpeg', './html/bestiaire/aboleth.html'),
(2, 'Kobold', 'Humano??de', 'Petite', 'Commun, Draconique', 'Vision dans le noir 60ft., Perception passive 8', 'Sensibilit?? au soleil. S\'il est expos?? ?? la lumi??re du soleil, le kobold a un d??savantage aux jets d\'attaque et aux jets de Sagesse (Perception) bas??s sur la vue.', NULL, './images/bestiaire/kobold.jpeg', './html/bestiaire/kobold.html'),
(3, 'Assassin', 'Humano??de (toute race)', 'Moyenne', 'Jargon des voleur + deux langues au choix', 'Perception passive 13', 'Assassinat. Au cours de son premier tour, l\'assassin a un avantage aux jets d\'attaque contre toute cr??ature qui n\'a pas encore pris un tour. Tout coup de l\'assassin qui touche contre une cr??ature surprise est un coup critique.\r\n         Attaque sournoise. \r\n         Une fois par tour, l\'assassin inflige 14 (4d6) d??g??ts suppl??mentaires quand il touche une cible lors d\'une attaque avec une arme et qu\'il a un avantage au jet d\'attaque, ou lorsque la cible est 1,50 m??tre ou moins d\'un alli?? de l\'assassin qui n\'est pas incapable d\'agir et si l\'assassin n\'a pas un d??savantage ?? son jet d\'attaque.\r\n         Esquive totale. \r\n         Si l\'assassin est soumis ?? un effet qui lui permet d\'effectuer un jet de sauvegarde de Dext??rit?? pour ne subir que la moiti?? des d??g??ts, il ne subit aucun d??g??t s\'il r??ussit son jet de sauvegarde, et seulement la moiti?? des d??g??ts s\'il ??choue.', NULL, './images/bestiaire/kobold.jpeg', './html/bestiaire/assassin.html');

-- --------------------------------------------------------

--
-- Table structure for table `caracteristique`
--

CREATE TABLE `caracteristique` (
  `Id_caracteristique` int NOT NULL,
  `libelle` varchar(45) DEFAULT NULL,
  `valeur` varchar(45) DEFAULT NULL,
  `Id_fiche_personnage` int DEFAULT NULL,
  `Id_bestiaire` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `caracteristique`
--

INSERT INTO `caracteristique` (`Id_caracteristique`, `libelle`, `valeur`, `Id_fiche_personnage`, `Id_bestiaire`) VALUES
(1, 'Force', '21', NULL, 1),
(2, 'Agilit??', '9', NULL, 1),
(3, 'Constitution', '15', NULL, 1),
(4, 'Intelligence', '18', NULL, 1),
(5, 'Sagesse', '15', NULL, 1),
(6, 'Charisme', '18', NULL, 1),
(7, 'Points de vie', '135 (18d10 + 36)', NULL, 1),
(8, 'Points d\'armure', '17 (armure naturelle)', NULL, 1),
(9, 'Vitesse', '10 ft., swim 40 ft.', NULL, 1),
(10, 'Experience', '6000xp', NULL, 1),
(11, 'Force', '15', 1, NULL),
(12, 'Agilit??', '12', 1, NULL),
(13, 'Constitution', '11', 1, NULL),
(14, 'Intelligence', '9', 1, NULL),
(15, 'Sagesse', '15', 1, NULL),
(16, 'Charisme', '18', 1, NULL),
(17, 'Points de vie', '22', 1, NULL),
(18, 'Points d\'armure', '15', 1, NULL),
(19, 'Vitesse', '30 ft', 1, NULL),
(20, 'Force', '7', NULL, 2),
(21, 'Agilit??', '15', NULL, 2),
(22, 'Constitution', '9', NULL, 2),
(23, 'Intelligence', '8', NULL, 2),
(24, 'Sagesse', '7', NULL, 2),
(25, 'Charisme', '8', NULL, 2),
(26, 'Points de vie', '5 (2d6 - 2)', NULL, 2),
(27, 'Points d\'armure', '12', NULL, 2),
(28, 'Vitesse', '30 ft.', NULL, 2),
(29, 'Experience', '25xp', NULL, 2),
(30, 'Force', '11', NULL, 3),
(31, 'Agilit??', '16', NULL, 3),
(32, 'Constitution', '14', NULL, 3),
(33, 'Intelligence', '13', NULL, 3),
(34, 'Sagesse', '11', NULL, 3),
(35, 'Charisme', '10', NULL, 3),
(36, 'Points de vie', '78 (12d8 + 24)', NULL, 3),
(37, 'Points d\'armure', '15 (armure de cuir)', NULL, 3),
(38, 'Vitesse', '30 ft.', NULL, 3),
(39, 'Experience', '3900xp', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `carte`
--

CREATE TABLE `carte` (
  `Id_carte` int NOT NULL,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valeur` varchar(45) DEFAULT NULL,
  `couleur` varchar(45) DEFAULT NULL,
  `descriptif` text,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carte`
--

INSERT INTO `carte` (`Id_carte`, `nom`, `valeur`, `couleur`, `descriptif`, `image`) VALUES
(1, NULL, '1', 'coeur', NULL, './images/cartes/1coeur.png'),
(2, NULL, '2', 'coeur', NULL, './images/cartes/2coeur.png'),
(3, NULL, '3', 'coeur', NULL, './images/cartes/3coeur.png'),
(4, NULL, '4', 'coeur', NULL, './images/cartes/4coeur.png'),
(5, NULL, '5', 'coeur', NULL, './images/cartes/5coeur.png'),
(6, NULL, '6', 'coeur', NULL, './images/cartes/6coeur.png'),
(7, NULL, '7', 'coeur', NULL, './images/cartes/7coeur.png'),
(8, NULL, '8', 'coeur', NULL, './images/cartes/8coeur.png'),
(9, NULL, '9', 'coeur', NULL, './images/cartes/9coeur.png'),
(10, NULL, '10', 'coeur', NULL, './images/cartes/10coeur.png'),
(11, NULL, 'valet', 'coeur', NULL, './images/cartes/valetcoeur.png'),
(12, NULL, 'dame', 'coeur', NULL, './images/cartes/dame.png'),
(13, NULL, 'roi', 'coeur', NULL, './images/cartes/roicoeur.png'),
(14, NULL, '1', 'trefle', NULL, './images/cartes/1trefle.png'),
(15, NULL, '2', 'trefle', NULL, './images/cartes/2trefle.png'),
(16, NULL, '3', 'trefle', NULL, './images/cartes/3trefle.png'),
(17, NULL, '4', 'trefle', NULL, './images/cartes/4trefle.png'),
(18, NULL, '5', 'trefle', NULL, './images/cartes/5trefle.png'),
(19, NULL, '6', 'trefle', NULL, './images/cartes/6trefle.png'),
(20, NULL, '7', 'trefle', NULL, './images/cartes/7trefle.png'),
(21, NULL, '8', 'trefle', NULL, './images/cartes/8trefle.png'),
(22, NULL, '9', 'trefle', NULL, './images/cartes/9trefle.png'),
(23, NULL, '10', 'trefle', NULL, './images/cartes/10trefle.png'),
(24, NULL, 'valet', 'trefle', NULL, './images/cartes/valettrefle.png'),
(25, NULL, 'dame', 'trefle', NULL, './images/cartes/dame.png'),
(26, NULL, 'roi', 'trefle', NULL, './images/cartes/roitrefle.png'),
(27, NULL, '1', 'pique', NULL, './images/cartes/1pique.png'),
(28, NULL, '2', 'pique', NULL, './images/cartes/2pique.png'),
(29, NULL, '3', 'pique', NULL, './images/cartes/3pique.png'),
(30, NULL, '4', 'pique', NULL, './images/cartes/4pique.png'),
(31, NULL, '5', 'pique', NULL, './images/cartes/5pique.png'),
(32, NULL, '6', 'pique', NULL, './images/cartes/6pique.png'),
(33, NULL, '7', 'pique', NULL, './images/cartes/7pique.png'),
(34, NULL, '8', 'pique', NULL, './images/cartes/8pique.png'),
(35, NULL, '9', 'pique', NULL, './images/cartes/9pique.png'),
(36, NULL, '10', 'pique', NULL, './images/cartes/10pique.png'),
(37, NULL, 'valet', 'pique', NULL, './images/cartes/valetpique.png'),
(38, NULL, 'dame', 'pique', NULL, './images/cartes/dame.png'),
(39, NULL, 'roi', 'pique', NULL, './images/cartes/roipique.png'),
(40, NULL, '1', 'carreau', NULL, './images/cartes/1carreau.png'),
(41, NULL, '2', 'carreau', NULL, './images/cartes/2carreau.png'),
(42, NULL, '3', 'carreau', NULL, './images/cartes/3carreau.png'),
(43, NULL, '4', 'carreau', NULL, './images/cartes/4carreau.png'),
(44, NULL, '5', 'carreau', NULL, './images/cartes/5carreau.png'),
(45, NULL, '6', 'carreau', NULL, './images/cartes/6carreau.png'),
(46, NULL, '7', 'carreau', NULL, './images/cartes/7carreau.png'),
(47, NULL, '8', 'carreau', NULL, './images/cartes/8carreau.png'),
(48, NULL, '9', 'carreau', NULL, './images/cartes/9carreau.png'),
(49, NULL, '10', 'carreau', NULL, './images/cartes/10carreau.png'),
(50, NULL, 'valet', 'carreau', NULL, './images/cartes/valetcarreau.png'),
(51, NULL, 'dame', 'carreau', NULL, './images/cartes/dame.png'),
(52, NULL, 'roi', 'carreau', NULL, './images/cartes/roicarreau.png'),
(53, 'Villageois', NULL, NULL, 'Le role nul', './images/cartes/villageois.png'),
(54, 'Loup-Garou', NULL, NULL, 'mange les villageois', './images/cartes/loup-garou.png'),
(55, 'Voyante', NULL, NULL, 'peut voir les cartes des autres joueurs', './images/cartes/voyante.png');

-- --------------------------------------------------------

--
-- Table structure for table `classe_personnage`
--

CREATE TABLE `classe_personnage` (
  `Id_classe_personnage` int NOT NULL,
  `description` text,
  `nom` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `classe_personnage`
--

INSERT INTO `classe_personnage` (`Id_classe_personnage`, `description`, `nom`) VALUES
(1, 'Peu de soci??t??s barbares sont identiques, m??me si la plupart d\"entre elles partagent nombre de valeurs communes et la m??me structure sociale. Ceci s\"explique par le fait que le climat et le terrain influent significativement sur ces soci??t??s sauvages, tout comme pour les soci??t??s civilis??es d\"ailleurs. Les installations, la nourriture et le niveau de vie ont ??galement un fort impact sur leur mani??re de s\"adapter ?? leur environnement naturel. Les exemples suivants d??taillent les types de soci??t??s barbares les plus communes.', 'Barbare'),
(2, 'Les bardes du coll??ge de la loi ont pass?? des ann??es ?? ??tudier l\"art subtil de la manipulation et de la logique. Ils sont experts pour tisser des histoires convaincantes et pour transformer des demi-v??rit??s en arguments cr??dibles, capables de s??duire le plus pragmatique des publics. Les bardes du coll??ge de la loi sont aussi excellents pour d??chiffrer les ??motions et le langage corporel afin de jauger les penchants de leur audience et d\"adapter leur plaidoyer en fonction. Rares sont ceux ?? sortir vainqueur d\"un d??bat avec un barde du coll??ge de la loi, la plupart de leurs opposants finissent d\"ailleurs par ??tre de leur avis.', 'Barde'),
(3, 'Les dieux du vent, tels que Aurile, Fharlanghn, Zeboim et le Voyageur, accordent moins d\"importance ?? l\"attachement aux lieux et aux gens pour favoriser ceux qui ont soif de voyages et qui suivent leur propre voie. ?? Je vais l?? o?? le vent me porte ?? est une phrase que nombre d\"aventuriers ont d??j?? prononc??e, mais aucun n\"incarne si bien cette id??e que les clercs du domaine du vent. Ils recherchent la v??ritable libert??, se d??barrassant de leurs soucis et de leurs attaches, s??duit par l\"id??e de devenir libre comme l\"air.', 'Clerc'),
(4, 'Les druides des cendres pensent que les vieilles choses doivent ??tre br??l??es afin de laisser place ?? quelque chose de meilleur qui pourra ??merger des cendres. Un membre de ce cercle peut ??tre devenu druide dans une for??t o?? les feux sont courants ou alors pr??s d\"un puissant volcan. Quelles que soient vos origines, vous savez que beaucoup de choses en ce monde stagnent, cessent de cro??tre ou m??me finissent par se corrompre ou se d??t??riorer. Pour vous, la valeur du feu vient de sa force de destruction cr??ative ; une fa??on de d??truire l\"ancien afin de laisser place au renouveau. Les druides de ce cercle ont adopt?? le ph??nix comme symbole de mort, de d??gradation et de renaissance. Ils ont pour habitude de planter des graines sur leurs ennemis\r\nd??c??d??s afin que la vie puisse renaitre de leur cendre.', 'Druide'),
(5, 'Une liche n\"est pas un mort-vivant comme les autres. ?? la diff??rence des zombis et autres squelettes, c\"est une cr??ature tr??s puissante, hautement intelligente et dou??e d\"une volont?? propre. Mais surtout, une liche est le r??sultat d\"un rituel perp??tr?? par un magicien de haut niveau pr??t ?? tout sacrifier pour obtenir la vie ??ternelle.', 'Liche'),
(6, 'R??sumer l\"art de la n??cromancie au fait de seulement animer des corps ou parler avec les esprits de personnes mortes depuis longtemps est une erreur. La n??cromancie recouvre en r??alit?? une multitude de disciplines, toutes distinctes, mais li??es. Un n??cromancien accompli est au minimum familier avec toutes et s\"efforcera d\"obtenir la ma??trise de plusieurs d\"entre elles. Mais toutes les questions li??es ?? la mort ??tant du domaine de ces magiciens, cela les conduit in??vitablement ?? un moment ou un autre ?? vouloir manipuler les forces de la mort et les morts-vivants, s???attirant alors le rejet de la soci??t?? dans son ensemble. Leur art est en effet consid??r?? comme une perversion de l\"ordre naturel du monde, car la mort est vue comme la fin ultime de toutes choses par la plupart des civilisations, au moins celles du monde Mat??riel. Qu\"un n??cromancien utilise ses pouvoirs pour faire appara??tre la vie sur un cadavre ou rappeler l\"esprit d???une personne d??c??d??e est tr??s souvent consid??r?? comme une abomination. Quelles que soient leurs v??ritables motivations et leurs ambitions, les n??cromanciens sont donc consid??r??s comme des ??tres mauvais par le commun des mortels, et font fr??quemment face ?? un certain degr?? de m??fiance et de suspicion parmi leurs pairs initi??s des arcanes.', 'N??cromant');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `Id_commande` int NOT NULL,
  `date_commande` datetime DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`Id_commande`, `date_commande`, `numero`) VALUES
(1, '2011-03-13 02:53:50', '1'),
(2, '2011-03-13 02:53:50', '2');

-- --------------------------------------------------------

--
-- Table structure for table `competence`
--

CREATE TABLE `competence` (
  `Id_competence` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `niveau` int DEFAULT NULL,
  `prerequis` varchar(144) DEFAULT NULL,
  `ecole` varchar(45) DEFAULT NULL,
  `description` text,
  `is_concentration` tinyint(1) DEFAULT NULL,
  `is_rituel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `competence`
--

INSERT INTO `competence` (`Id_competence`, `nom`, `niveau`, `prerequis`, `ecole`, `description`, `is_concentration`, `is_rituel`) VALUES
(1, 'Agrandissement/Rapetissement', 2, 'V, S, M (une pinc??e de poudre de fer)', 'transmutation', 'Vous agrandissez ou r??duisez en taille une cr??ature ou un objet que vous pouvez voir et qui est ?? port??e pour la dur??e du sort. Choisissez une cr??ature ou un objet qui n est pas port?? ou transport??. Si la cible n est pas consentante, elle peut effectuer un jet de sauvegarde de Constitution. En cas de r??ussite, le sort n a aucun effet.Si la cible est une cr??ature, toutes les choses qu elle porte et transporte changent de taille avec elle. Tout objet l??ch?? par la cr??ature affect??e reprend sa taille normale.Agrandissement. La cible double dans toutes les dimensions, et son poids est multipli?? par huit. Cela augmente sa taille d une cat??gorie, de M ?? G par exemple. S il n y a pas assez de place dans la pi??ce pour que la cible double de taille, la cr??ature ou l objet atteint la taille maximale possible dans l espace disponible. Jusqu?? la fin du sort, la cible a aussi un avantage ?? ses jets de Force et ses jets de sauvegarde de Force. Les armes de la cible grandissent ??galement. Tant que ces armes sont agrandies, les attaques de la cible occasionnent 1d4 d??g??ts suppl??mentaires.Rapetissement. La taille de la cible est diminu??e de moiti?? dans toutes les dimensions, et son poids est divis?? par huit. Cette r??duction diminue sa taille dune cat??gorie, de M ?? P par exemple. Jusqu?? la fin du sort, la cible a un d??savantage ?? ses jets de Force et ?? ses jets de sauvegarde de Force. Les armes de la cible rapetissent aussi. Tant que ces armes sont r??duites, les attaques de la cible occasionnent 1d4 d??g??ts en moins (minimum 1 point de d??g??ts).', 1, 1),
(2, 'Aide', 2, 'V, S, M (un petit bout de v??tement blanc)', 'abjuration', 'Votre sort emplit vos alli??s de robustesse et de r??solution. Choisissez jusqu?? trois cr??atures ?? port??e. Le maximum de points de vie et les points de vie actuels de chaque cible augmentent de 5 pour la dur??e du sort.Aux niveaux sup??rieurs. Lorsque vous lancez ce sort en utilisant un emplacement de sort de niveau 3 ou sup??rieur, les points de vie de chaque cible augmentent de 5 pour chaque niveau d emplacement au-del?? du niveau 2.', 1, 0),
(3, 'Alarme', 1, 'V, S, M (une petite clochette et un morceau de fil dargent fin)', 'abjuration', 'Vous mettez en place une alarme contre les intrusions ind??sirables. Choisissez une porte, une fen??tre, ou une zone ?? port??e qui ne d??passe pas un cube de 6 m??tres dar??te. Jusqu?? la fin du sort, une alarme vous alerte lorsquune cr??ature de taille TP ou sup??rieure touche ou p??n??tre la zone surveill??e. Lorsque vous lancez ce sort, vous pouvez d??signer des cr??atures qui ne d??clencheront pas l alarme. Vous pouvez ??galement choisir si l alarme est audible ou juste mentale.Une alarme mentale vous alerte avec une sonnerie dans votre esprit ?? condition que vous soyez ?? 1,5 kilom??tre maximum de la zone surveill??e. Cette sonnerie vous r??veille si vous ??tes endormi. Une alarme audible produit le son d une clochette ?? main, pendant 10 secondes, pouvant ??tre entendue ?? 18 m??tres.', 0, 1),
(4, 'Agrandissement/Rapetissement', 2, 'V, S, M (une pinc??e de poudre de fer)', 'transmutation', 'Vous agrandissez ou r??duisez en taille une cr??ature ou un objet que vous pouvez voir et qui est ?? port??e pour la dur??e du sort. Choisissez une cr??ature ou un objet qui n est pas port?? ou transport??. Si la cible n est pas consentante, elle peut effectuer un jet de sauvegarde de Constitution. En cas de r??ussite, le sort n a aucun effet.Si la cible est une cr??ature, toutes les choses qu elle porte et transporte changent de taille avec elle. Tout objet l??ch?? par la cr??ature affect??e reprend sa taille normale.Agrandissement. La cible double dans toutes les dimensions, et son poids est multipli?? par huit. Cela augmente sa taille d une cat??gorie, de M ?? G par exemple. S il n y a pas assez de place dans la pi??ce pour que la cible double de taille, la cr??ature ou l objet atteint la taille maximale possible dans l espace disponible. Jusqu?? la fin du sort, la cible a aussi un avantage ?? ses jets de Force et ses jets de sauvegarde de Force. Les armes de la cible grandissent ??galement. Tant que ces armes sont agrandies, les attaques de la cible occasionnent 1d4 d??g??ts suppl??mentaires.Rapetissement. La taille de la cible est diminu??e de moiti?? dans toutes les dimensions, et son poids est divis?? par huit. Cette r??duction diminue sa taille dune cat??gorie, de M ?? P par exemple. Jusqu?? la fin du sort, la cible a un d??savantage ?? ses jets de Force et ?? ses jets de sauvegarde de Force. Les armes de la cible rapetissent aussi. Tant que ces armes sont r??duites, les attaques de la cible occasionnent 1d4 d??g??ts en moins (minimum 1 point de d??g??ts).', 1, 1),
(5, 'Aide', 2, 'V, S, M (un petit bout de v??tement blanc)', 'abjuration', 'Votre sort emplit vos alli??s de robustesse et de r??solution. Choisissez jusqu?? trois cr??atures ?? port??e. Le maximum de points de vie et les points de vie actuels de chaque cible augmentent de 5 pour la dur??e du sort.Aux niveaux sup??rieurs. Lorsque vous lancez ce sort en utilisant un emplacement de sort de niveau 3 ou sup??rieur, les points de vie de chaque cible augmentent de 5 pour chaque niveau d emplacement au-del?? du niveau 2.', 1, 0),
(7, 'meditation', 1, 'une petite clochette dargent fin', 'delavie', 'l\'elfe medite au lieu de dormir comme un moldue', 1, 0),
(8, 'bufet sous-marin', 1, 'une petite personne vers midi)', 'delavie', 'l\' abolette mange un humain', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `compose`
--

CREATE TABLE `compose` (
  `Id_produit_vente` int NOT NULL,
  `Id_commande` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `compose`
--

INSERT INTO `compose` (`Id_produit_vente`, `Id_commande`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `depend`
--

CREATE TABLE `depend` (
  `Id_classe_personnage` int NOT NULL,
  `Id_fiche_personnage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `depend`
--

INSERT INTO `depend` (`Id_classe_personnage`, `Id_fiche_personnage`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `deroule`
--

CREATE TABLE `deroule` (
  `Id_maps` int NOT NULL,
  `Id_instance_de_partie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deroule`
--

INSERT INTO `deroule` (`Id_maps`, `Id_instance_de_partie`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `detient`
--

CREATE TABLE `detient` (
  `Id_bestiaire` int NOT NULL,
  `Id_competence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detient`
--

INSERT INTO `detient` (`Id_bestiaire`, `Id_competence`) VALUES
(1, 5),
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `droits`
--

CREATE TABLE `droits` (
  `Id_droits` int NOT NULL,
  `is_actif` tinyint(1) DEFAULT NULL,
  `libelle` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `droits`
--

INSERT INTO `droits` (`Id_droits`, `is_actif`, `libelle`) VALUES
(1, 1, 'voir'),
(2, 0, 'voir'),
(3, 1, 'ecrire'),
(4, 0, 'ecrire'),
(5, 1, 'supprimer'),
(6, 0, 'supprimer');

-- --------------------------------------------------------

--
-- Table structure for table `ecrit`
--

CREATE TABLE `ecrit` (
  `Id_utilisateur` int NOT NULL,
  `Id_tchat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ecrit`
--

INSERT INTO `ecrit` (`Id_utilisateur`, `Id_tchat`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 4),
(2, 5),
(3, 6),
(2, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `entrepose`
--

CREATE TABLE `entrepose` (
  `Id_maps` int NOT NULL,
  `Id_items` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entrepose`
--

INSERT INTO `entrepose` (`Id_maps`, `Id_items`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(15, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(1, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(14, 6),
(15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `fiche_personnage`
--

CREATE TABLE `fiche_personnage` (
  `Id_fiche_personnage` int NOT NULL,
  `alignement` varchar(45) DEFAULT NULL,
  `niveau_social` varchar(45) DEFAULT NULL,
  `pseudo` varchar(45) DEFAULT NULL,
  `description` text,
  `avantage_desavantage` varchar(254) DEFAULT NULL,
  `niveau` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fiche_personnage`
--

INSERT INTO `fiche_personnage` (`Id_fiche_personnage`, `alignement`, `niveau_social`, `pseudo`, `description`, `avantage_desavantage`, `niveau`) VALUES
(1, 'loyal', 'Mage', 'Illydia Maethellyn', 'Illydia est la fille pu??n??e d un noble seigneur elfique. Elle b??n??ficia comme son fr??re a??n?? d une ??ducation nobiliaire compl??te allant de l histoire de sa famille au maniement de l??p??e ou de larc de chasse en passant par la diplomatie et lapprentissage des langues des peuples amis et ennemis. ', 'les avantages et les desavantages', 5),
(2, 'Bon', 'Enfant des rues', 'Robec Dentdragon', 'Robec fut dans sa prime jeunesse un petit halfelin doux et rieur, mais par un caprice cruel du destin il se retrouva tr??s jeune, orphelin, errant dans les rues de cette cit?? qu\"il ne connaissait pas. D??p??rissant ?? vue d?????il, se faisant voler par d\"autres, plus agressifs que lui, les maigres trognons qu\"il r??ussissait ?? trouver, les passants indiff??rents ne donnaient pas cher de sa peau.', 'les avantages et les desavantages', 4),
(3, 'Neutre', 'Soldat', 'Jarhild Stoneforge', 'Jarhild est fille de forgeron, et plus pr??cis??ment d\"un des ma??tres de forge les plus renomm??es de sa cit??. Le talent de celui-ci ??tait tel que la rumeur lui pr??tait la capacit?? de plier n\"importe quel m??tal, m??me ceux durs comme la pierre, ?? sa volont??. C\"est pour cela qu\"il ??tait surnomm?? Stoneforge.', 'les avantages et les desavantage', 3),
(4, 'Chaotique', 'Sage', 'Gilthas Galadon', 'Gilthas a grandi au sein d\"une fratrie de combattants et perdait toujours aux jeux physiques. Ses capacit??s intellectuelles tr??s au dessus de la moyenne ne l\"aidaient pas non plus, elles provoquaient le malaise chez les autres jeunes. Tr??s t??t il prit l\"habitude de parler tout doucement, en murmurant et en utilisant des mots savants qu\"il inventait m??me parfois pour l\"occasion. Il cr??ait des jeux aux r??gles compliqu??s que les autres ne pouvaient pas suivre???', 'les avantages et les desavantages', 6),
(5, 'loyal', 'Sage', 'Hommet Shaw', ' Fils unique de Matthias et Janet, paysans au train de vie modeste, Hommet a grandi loin des grandes villes et n\"a jamais ??t?? un enfant comme les autres. Alors que ses camarades jouaient ?? kobold-perch??, lui capturait et diss??quait de petits animaux, comme des grenouilles, des pigeons ou encore des ??cureuils. ', 'les avantages et les desavantages', 6),
(6, 'Chaotique', 'Chevalier', 'Javen Tarmikos', ' Javen vit le jour dans une famille noble. Il v??cut son enfance comme ??cuyer d\"un paladin et apprit aupr??s de lui la voie de la chevalerie, ainsi que l\"histoire de son ordre et les doctrines religieuses de celui-ci.', 'les avantages et les desavantages', 6);

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `Id_forum` int NOT NULL,
  `categorie` varchar(45) DEFAULT NULL,
  `sujet` varchar(144) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`Id_forum`, `categorie`, `sujet`) VALUES
(1, 'Annonce', 'Sortie du jeu'),
(2, 'Nouveaut??s', ' Nouvelles r??gles '),
(3, 'API script', 'Token mod help'),
(4, 'Suggestions, id??es', 'Customiser les d??s');

-- --------------------------------------------------------

--
-- Table structure for table `herite`
--

CREATE TABLE `herite` (
  `Id_competence` int NOT NULL,
  `Id_race` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `herite`
--

INSERT INTO `herite` (`Id_competence`, `Id_race`) VALUES
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `illustre`
--

CREATE TABLE `illustre` (
  `Id_items` int NOT NULL,
  `Id_tokens` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `illustre`
--

INSERT INTO `illustre` (`Id_items`, `Id_tokens`) VALUES
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `Id_utilisateur` int NOT NULL,
  `Id_maps` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`Id_utilisateur`, `Id_maps`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 12),
(7, 13),
(7, 14),
(7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `incarne`
--

CREATE TABLE `incarne` (
  `Id_bestiaire` int NOT NULL,
  `Id_tokens` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `incarne`
--

INSERT INTO `incarne` (`Id_bestiaire`, `Id_tokens`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `instance_de_partie`
--

CREATE TABLE `instance_de_partie` (
  `Id_instance_de_partie` int NOT NULL,
  `Id_systeme_jeux` int NOT NULL,
  `nom` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `instance_de_partie`
--

INSERT INTO `instance_de_partie` (`Id_instance_de_partie`, `Id_systeme_jeux`, `nom`) VALUES
(1, 1, 'les aventures de tintin'),
(2, 3, 'C\'est la tienne'),
(3, 1, 'Les orphelins de Baldur'),
(4, 1, 'Rime of FrostMaiden'),
(5, 3, 'L\'amulette du d??sordre'),
(6, 2, 'La v??rit?? est ailleurs'),
(7, 3, 'Oktobearfest et l\'ours ?? la bi??re'),
(8, 2, 'Bienvenue ?? Blackwater Creek'),
(9, 4, 'Le village de Tiercelieux'),
(10, 1, 'Tyrannie des dragons');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Id_items` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `categorie` varchar(45) DEFAULT NULL,
  `description` text,
  `prix` varchar(45) DEFAULT NULL,
  `poids` varchar(45) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `html` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Id_items`, `nom`, `categorie`, `description`, `prix`, `poids`, `image`, `html`) VALUES
(1, 'B??ton', 'Arme', 'Un simple b??ton, quarterstaff, 1d6 contondant, polyvalente (1d8)', '2 pa', '2kg', './images/items/B??ton.jpeg', './pages/items/B??ton.html'),
(2, 'Arc court', 'Arme', 'Un arc court simple, crossbow, light, 1d8 perforant, munitions (port??e 24m/96m), chargement, ?? deux mains', '25 po', '2.5kg', './images/items/Arc.jpeg', './images/items/Arc.html'),
(3, 'Armure cuir', 'Armure', 'Une armure en cuir simple, leather, 11+Mod.Dex', '10 po', '5kg', './images/items/Cuir.png', './images/items/ArmureCuir.html'),
(4, 'Corde en chanvre (15m)', 'Equipement d\'aventurier', 'Une corde solide de 15m en chanvre, rope, hempen', '1 po', '5kg', './images/items/Corde.jpeg', './images/items/Corde.html'),
(5, 'Sac', 'Equipement d\'aventurier', 'Une sac pour l\'aventure, sack', '2 po', '0.25kg', './images/items/Sac.jpeg', './images/items/Sac.html'),
(6, 'Luth', 'Outils', 'Un luth, pour faire de la musique, lute', '35 po', '1kg', './images/items/Luth.jpeg', './images/items/Luth.html'),
(7, 'Cafeti??re', 'Objet l??gendaire', 'Une machine expresso ?? dosettes toute simple. D\'une grande raret?? dans le syst??me Osengo.', '50 cents', '10g', './images/items/Machine_Cafe.jpeg', './html/items/Machine_Cafe.html');

-- --------------------------------------------------------

--
-- Table structure for table `joue`
--

CREATE TABLE `joue` (
  `Id_systeme_jeux` int NOT NULL,
  `Id_classe_personnage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `joue`
--

INSERT INTO `joue` (`Id_systeme_jeux`, `Id_classe_personnage`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `Id_maps` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `epoque` varchar(45) DEFAULT NULL,
  `categorie` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`Id_maps`, `nom`, `image`, `epoque`, `categorie`) VALUES
(1, 'Dead in Thay', '././image/maps/dead_in_thay.html/maps/Dead_in_thay.html', 'medieval', 'ville'),
(2, 'Lost Mine of Phandelver', './image/maps/Lost_Mine_of_Phandelver.html', 'medieval', 'c??te'),
(3, 'Omu', './image/maps/omu.html', 'medieval', 'ville'),
(4, 'Biblioth??que', './image/maps/bibliotheque.html', 'medieval', 'biblioth??que'),
(5, 'Abbaye', './image/maps/abbaye.html', 'medieval', 'abbaye'),
(6, 'Banquise', './image/maps/banquise.html', 'medieval', 'ext??rieur'),
(7, 'Camp', './image/maps/camp.html', 'medieval', 'ext??rieur'),
(8, 'Clairi??re', './image/maps/clairiere.html', 'medieval', 'ext??rieur'),
(9, 'Croisement', './image/maps/croisement.html', 'medieval', 'ext??rieur'),
(10, 'Auberge/RdC', './image/maps/auberge_rdc.html', 'medieval', 'ext??rieur'),
(11, 'Taverne', './image/maps/taverne.html', 'medieval', 'int??rieur'),
(12, 'Temple', './image/maps/temple.html', 'medieval', 'int??rieur'),
(13, 'Ville Lacustre', './image/maps/ville_lacustre.html', 'medieval', 'int??rieur'),
(14, 'Guilde voleurs', './image/maps/Guilde_voleur.html', 'medieval', 'int??rieur'),
(15, 'Maison, cercueils', './image/maps/maison_cercueils.html', 'medieval', 'int??rieur');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id_message` int NOT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `contenu` text,
  `Id_forum` int DEFAULT NULL,
  `Id_message_1` int DEFAULT NULL,
  `Id_utilisateur` int DEFAULT NULL,
  `Id_utilisateur_1` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Id_message`, `is_public`, `contenu`, `Id_forum`, `Id_message_1`, `Id_utilisateur`, `Id_utilisateur_1`) VALUES
(1, 1, 'Voil?? comme son nom l\'indique, j\'aimerai customiser des d??s. Si vous avez de bonnes adresses, je suis preneur.', 4, 1, 3, 1),
(2, 1, 'D&D 5 d??sormais disponible sur notre plateforme!!!', 1, 1, 2, 2),
(3, 1, 'Si tu es bricoleur, tu peux jeter un ??il ici : http://toutpourlejeu.com/fr/36-des-neutres-a-personnaliser%22', 4, 2, 5, 1),
(4, 1, 'merci', 4, 1, 3, 4),
(5, 0, 'je n\'en suis pas si s??r', 3, 1, 4, 2),
(6, 1, 'Depuis le temps qu\'on l\'attendait', 1, 2, 6, 1),
(7, 0, 'est qu\'on pourra importer des maps perso?', 1, 2, 7, 1),
(8, 1, 'Sinon, imprimer des ??tiquettes que tu peux ??ventuellement plastifier (mais que d\'un c??t?? bien s??r) et les coller sur des d??s normaux, si possible sans sculpture.', 4, 1, 6, 2),
(9, 0, 'vite fait,', 2, 2, 5, 1),
(10, 1, 'Toute Discussion doit r??pondre aux r??gles de forme et de fond suivantes :interdiction de poster des Contributions ?? caract??re directement ou indirectement diffamatoire, injurieux ou d??lictuel; interdiction de diffuser les donn??es personnelles d\'un Membre ou de toute autre personne physique, car ces donn??es font l\'objet d\'un droit de modification ou de suppression. Sont notamment concern??s : l\'adresse email ou postale, le nom de famille, le t??l??phone,', 3, 1, 3, 2),
(11, 0, 't\'es l???', 4, 2, 1, 2),
(12, 0, 'Essaie de te d??connecter pour voir', 3, 1, 5, 2),
(13, 1, 'je n\'arrive pas ?? voir mes tokens', 4, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `necessite`
--

CREATE TABLE `necessite` (
  `Id_classe_personnage` int NOT NULL,
  `Id_competence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `necessite`
--

INSERT INTO `necessite` (`Id_classe_personnage`, `Id_competence`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 2),
(4, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `Id_paiement` int NOT NULL,
  `moyen_paiement` varchar(45) DEFAULT NULL,
  `Id_commande` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`Id_paiement`, `moyen_paiement`, `Id_commande`) VALUES
(1, 'carte', 1),
(2, 'paypal', 2);

-- --------------------------------------------------------

--
-- Table structure for table `participe`
--

CREATE TABLE `participe` (
  `Id_utilisateur` int NOT NULL,
  `Id_instance_de_partie` int NOT NULL,
  `Id_droits` int NOT NULL,
  `is_MJ` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `participe`
--

INSERT INTO `participe` (`Id_utilisateur`, `Id_instance_de_partie`, `Id_droits`, `is_MJ`) VALUES
(1, 1, 1, 1),
(1, 1, 3, 1),
(1, 1, 5, 1),
(1, 4, 1, 1),
(1, 4, 3, 1),
(1, 4, 5, 1),
(1, 9, 1, 1),
(1, 9, 3, 1),
(1, 9, 5, 1),
(1, 10, 1, 1),
(1, 10, 3, 1),
(1, 10, 5, 1),
(2, 1, 1, 0),
(2, 1, 3, 0),
(2, 1, 6, 0),
(2, 3, 1, 1),
(2, 3, 3, 1),
(2, 3, 5, 1),
(2, 4, 1, 0),
(2, 4, 3, 0),
(2, 4, 6, 0),
(2, 5, 1, 0),
(2, 5, 4, 0),
(2, 5, 6, 0),
(2, 6, 1, 0),
(2, 6, 4, 0),
(2, 6, 6, 0),
(2, 7, 1, 0),
(2, 7, 3, 0),
(2, 7, 6, 0),
(2, 8, 1, 0),
(2, 8, 4, 0),
(2, 8, 6, 0),
(2, 9, 1, 0),
(2, 9, 3, 0),
(2, 9, 6, 0),
(3, 1, 1, 0),
(3, 1, 3, 0),
(3, 1, 6, 0),
(3, 3, 1, 0),
(3, 3, 3, 0),
(3, 3, 6, 0),
(3, 4, 1, 0),
(3, 4, 3, 0),
(3, 4, 6, 0),
(3, 5, 1, 1),
(3, 5, 3, 1),
(3, 5, 5, 1),
(3, 6, 1, 0),
(3, 6, 3, 0),
(3, 6, 6, 0),
(3, 8, 1, 0),
(3, 8, 4, 0),
(3, 8, 6, 0),
(3, 9, 1, 0),
(3, 9, 3, 0),
(3, 9, 6, 0),
(4, 1, 1, 0),
(4, 1, 3, 0),
(4, 1, 6, 0),
(4, 2, 1, 1),
(4, 2, 3, 1),
(4, 2, 5, 1),
(4, 3, 1, 0),
(4, 3, 3, 0),
(4, 3, 6, 0),
(4, 4, 1, 0),
(4, 4, 3, 0),
(4, 4, 6, 0),
(4, 6, 1, 0),
(4, 6, 4, 0),
(4, 6, 6, 0),
(4, 8, 1, 0),
(4, 8, 4, 0),
(4, 8, 6, 0),
(4, 9, 1, 0),
(4, 9, 4, 0),
(4, 9, 6, 0),
(5, 1, 1, 0),
(5, 1, 3, 0),
(5, 1, 6, 0),
(5, 2, 1, 0),
(5, 2, 3, 0),
(5, 2, 6, 0),
(5, 3, 1, 0),
(5, 3, 4, 0),
(5, 3, 6, 0),
(5, 4, 1, 0),
(5, 4, 3, 0),
(5, 4, 6, 0),
(5, 5, 1, 0),
(5, 5, 3, 0),
(5, 5, 6, 0),
(5, 6, 1, 1),
(5, 6, 3, 1),
(5, 6, 5, 1),
(5, 7, 1, 0),
(5, 7, 3, 0),
(5, 7, 6, 0),
(5, 8, 1, 1),
(5, 8, 3, 1),
(5, 8, 5, 1),
(5, 9, 1, 0),
(5, 9, 4, 0),
(5, 9, 6, 0),
(6, 2, 1, 0),
(6, 2, 3, 0),
(6, 2, 6, 0),
(6, 3, 1, 0),
(6, 3, 4, 0),
(6, 3, 6, 0),
(6, 4, 1, 0),
(6, 4, 3, 0),
(6, 4, 6, 0),
(6, 5, 1, 0),
(6, 5, 3, 0),
(6, 5, 6, 0),
(6, 6, 1, 0),
(6, 6, 4, 0),
(6, 6, 6, 0),
(6, 9, 1, 0),
(6, 9, 4, 0),
(6, 9, 6, 0),
(7, 2, 1, 0),
(7, 2, 3, 0),
(7, 2, 6, 0),
(7, 4, 1, 0),
(7, 4, 3, 0),
(7, 4, 6, 0),
(7, 6, 1, 0),
(7, 6, 3, 0),
(7, 6, 6, 0),
(7, 7, 1, 1),
(7, 7, 3, 1),
(7, 7, 5, 1),
(7, 9, 1, 0),
(7, 9, 4, 0),
(7, 9, 6, 0),
(7, 10, 1, 0),
(7, 10, 3, 0),
(7, 10, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `peuple`
--

CREATE TABLE `peuple` (
  `Id_items` int NOT NULL,
  `Id_systeme_jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `peuple`
--

INSERT INTO `peuple` (`Id_items`, `Id_systeme_jeux`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `possede`
--

CREATE TABLE `possede` (
  `Id_fiche_personnage` int NOT NULL,
  `Id_competence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `possede`
--

INSERT INTO `possede` (`Id_fiche_personnage`, `Id_competence`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(4, 2),
(5, 2),
(1, 3),
(4, 3),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prend`
--

CREATE TABLE `prend` (
  `Id_utilisateur` int NOT NULL,
  `Id_paiement` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prend`
--

INSERT INTO `prend` (`Id_utilisateur`, `Id_paiement`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `produit_vente`
--

CREATE TABLE `produit_vente` (
  `Id_produit_vente` int NOT NULL,
  `nom` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prix` decimal(19,4) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produit_vente`
--

INSERT INTO `produit_vente` (`Id_produit_vente`, `nom`, `prix`, `type`, `description`) VALUES
(1, 'Dungeons & Dragons - Dungeon Master \'s Guide : Guide du maitre - 5??me ??dition', '39.9900', 'physique', 'Le Dungeon Master???s Guide est une mine d???inspiration et de conseils qui enflammera votre imagination et vous aidera ?? cr??er des mondes d???aventures que vos joueurs se feront un plaisir d???explorer.Dans ses pages, vous trouverez des conseils pour b??tir un monde, des astuces pour concevoir des donjons et de grandes aventures, des r??gles de jeu optionnelles, des centaines d???objets magiques typiques de D&D ?? et bien d???autres outils pour vous aider ?? devenir un ma??tre du donjon accompli.'),
(2, 'Donjons & Dragons Tomb of annihilation - Black book edition', '49.9900', 'physique', 'Oserez-vous d??fier la mort dans cette aventure con??ue pour le meilleur jeu de r??le au monde ? Bienvenue dans la jungle !Une mal??diction mortelle s???abat sur les morts d??j?? ramen??s ?? la vie : ils se mettent ?? pourrir et tous les efforts d??ploy??s pour enrayer la d??composition restent vains. Les ??mes des tr??pass??s sont maintenant vol??es ?? leur mort, les unes apr??s les autres, et pi??g??es dans un artefact n??cromantique. Ce n???est qu???en d??truisant cette chose qu???elles seront lib??r??es et que l???on pourra de nouveau ramener les d??funts ?? la vie. Tous les indices m??nent au Chult, un pays myst??rieux fait de volcans, de jungles et des ruines de royaumes d??chus, sous lequel un tombeau mortel attend ses victimes. Le pi??ge est tendu, mordrez-vous ?? l???app??t ? Une aventure Dungeons & Dragons pour des personnages de niveau 1 ?? 11.?? utiliser avec la cinqui??me ??dition du Player???s Handbook, du Monster Manualet du Dungeon Master???s Guide de Dungeons & Dragons.'),
(3, 'Aria : la couronne, le sceptre, et l\'orbe', '19.9900', 'pdf', 'Seconde partie d\'Aria, La couronne, le sceptre et l\'orbe contient ??galement les r??gles du jeu vous permettant de cr??er vos personnages et de les faire ??voluer. En plus des sept profils d\'aventuriers de base, il propose ??galement deux profils d\'aventuriers in??dits : Le cr??ateur d\'automates et le prodige. L\'ouvrage vous emm??nera ?? Aqabah, cit?? de la sagesse ; mais aussi visiter le Grand Vide, un d??sert mortel, ainsi que la myst??rieuse cit?? d\'Irem, scell??e par trois portes-??nigmes, ?? Kniga, la ville machine que se disputent alchimistes et cr??ateurs d\'automates ; peut-??tre oserez-vous traverser le Mur de Varna et d??couvrir l\'Osmanlie ? O?? les Dieux marchent parmi les hommes... Et o?? les hommes peuvent esp??rer devenir des Dieux.');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `Id_race` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`Id_race`, `nom`, `description`) VALUES
(1, 'humain', 'basique '),
(2, 'monstre', 'fait tr??s peur'),
(3, 'gobelin', 'vert'),
(4, 'elfe', 'grandes oreilles');

-- --------------------------------------------------------

--
-- Table structure for table `regle_jeux`
--

CREATE TABLE `regle_jeux` (
  `Id_regle_jeux` int NOT NULL,
  `document_regle` varchar(254) DEFAULT NULL,
  `categorie` varchar(45) DEFAULT NULL,
  `descriptif` text,
  `Id_systeme_jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `regle_jeux`
--

INSERT INTO `regle_jeux` (`Id_regle_jeux`, `document_regle`, `categorie`, `descriptif`, `Id_systeme_jeux`) VALUES
(1, 'https://donjonetdragon.fr/ressources/pdf/', 'regle', 'Le jeu de r??le Dungeons & Dragons baigne dans\r\nun univers de combats et de magie. De\r\nnombreux jeux de notre enfance sont bas??s sur\r\nl???immersion. Au m??me titre, D&D s???appuie sur\r\nl???imagination. Il s???agit de d??tailler le ch??teau\r\nfort par une nuit de temp??te et imaginer\r\ncomment un a', 1),
(2, 'https://www.aidedd.org/regles/creation-de-perso/', 'creation de personnage', 'La premi??re ??tape d\'une partie de Dungeons & Dragons est d\'imaginer et de se cr??er son propre personnage. Un personnage est d??fini par des statistiques de jeu, des accroches de roleplay, et par votre imagination. Vous choisissez une race (comme humain ou halfelin) et une classe (comme guerrier ou magicien). Vous inventez aussi la personnalit??, l\'apparence et l\'histoire de votre personnage. Une fois cela achev??, votre personnage est votre avatar dans le monde de Dungeons & Dragons.', 1),
(3, 'https://www.aidedd.org/regles/classes/', 'classe', 'Les aventuriers sont des personnes extraordinaires pouss??es par la soif de l\'excitation vers une vie que d\'autres n\'oseraient jamais imaginer. Ce sont des h??ros, contraints d\'explorer les endroits les plus sombres et d\'aborder des d??fis que les femmes et les hommes communs ne pourraient surmonter.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regroupe`
--

CREATE TABLE `regroupe` (
  `Id_bestiaire` int NOT NULL,
  `Id_systeme_jeux` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `regroupe`
--

INSERT INTO `regroupe` (`Id_bestiaire`, `Id_systeme_jeux`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `represente`
--

CREATE TABLE `represente` (
  `Id_fiche_personnage` int NOT NULL,
  `Id_tokens` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `represente`
--

INSERT INTO `represente` (`Id_fiche_personnage`, `Id_tokens`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `requiert`
--

CREATE TABLE `requiert` (
  `Id_systeme_jeux` int NOT NULL,
  `Id_carte` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requiert`
--

INSERT INTO `requiert` (`Id_systeme_jeux`, `Id_carte`) VALUES
(4, 53),
(4, 54),
(4, 55);

-- --------------------------------------------------------

--
-- Table structure for table `sied`
--

CREATE TABLE `sied` (
  `Id_fiche_personnage` int NOT NULL,
  `Id_race` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sied`
--

INSERT INTO `sied` (`Id_fiche_personnage`, `Id_race`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `stocke`
--

CREATE TABLE `stocke` (
  `Id_items` int NOT NULL,
  `Id_fiche_personnage` int NOT NULL,
  `quantite` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stocke`
--

INSERT INTO `stocke` (`Id_items`, `Id_fiche_personnage`, `quantite`) VALUES
(1, 3, 3),
(2, 2, 20),
(3, 2, 2),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 4, 1),
(4, 5, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE `structure` (
  `Id_systeme_jeux` int NOT NULL,
  `Id_style_fiche_personnage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `structure`
--

INSERT INTO `structure` (`Id_systeme_jeux`, `Id_style_fiche_personnage`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `style_fiche_personnage`
--

CREATE TABLE `style_fiche_personnage` (
  `Id_style_fiche_personnage` int NOT NULL,
  `categorie` varchar(45) DEFAULT NULL,
  `html` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `style_fiche_personnage`
--

INSERT INTO `style_fiche_personnage` (`Id_style_fiche_personnage`, `categorie`, `html`) VALUES
(1, 'Personnage', './style_fiches_persos/DnD5-personnages.html'),
(2, 'PNJ', './style_fiches_persos/DnD5-PNJ.html'),
(3, 'Personnage', './style_fiches_persos/Chtulu-personnages.html'),
(4, 'Personnage', './style_fiches_persos/Naheulbeuk-personnages.html'),
(5, 'Personnage', './style_fiches_persos/Loup-Garou-personnages.html');

-- --------------------------------------------------------

--
-- Table structure for table `systeme_jeux`
--

CREATE TABLE `systeme_jeux` (
  `Id_systeme_jeux` int NOT NULL,
  `nom_jeu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `systeme_jeux`
--

INSERT INTO `systeme_jeux` (`Id_systeme_jeux`, `nom_jeu`) VALUES
(1, 'D&D 5eme edition'),
(2, 'Chtulu'),
(3, 'Naheulbeuk'),
(4, 'Loup-Garou de Thiercelieux');

-- --------------------------------------------------------

--
-- Table structure for table `tchat`
--

CREATE TABLE `tchat` (
  `Id_tchat` int NOT NULL,
  `message` text,
  `date_heure_jour` datetime DEFAULT NULL,
  `Id_instance_de_partie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tchat`
--

INSERT INTO `tchat` (`Id_tchat`, `message`, `date_heure_jour`, `Id_instance_de_partie`) VALUES
(1, 'coucou\'', '2022-12-12 08:06:03', 1),
(2, 'Bon, chacun son tour. Philippe, tu regardes les gargouilles ?', '2022-12-12 06:12:31', 1),
(3, 'Oui. Il y a quelque chose qui pourrait me dire si elles sont juste d??coratives ou pas ?', '2022-12-12 23:19:58', 2),
(4, 'Je peux utiliser ma comp??tence Investigation en bonus.', '2023-12-12 18:15:52', 3),
(5, 'Bof... sept.', '2022-11-07 16:15:28', 3),
(6, 'Elles ont l???air d??coratives ?? priori. ensuite au tour de Lorraine', '2022-12-12 05:14:25', 4),
(7, 'Oui!', '2022-12-12 12:40:24', 5),
(8, 'Au-del?? des pics escarp??s, la route tourne subitement vers l???est et le ch??teau de Ravenloft se dresse devant vous. Les pierres effrit??es laissent r??gner un lourd silence ?? votre approche, laissant penser que les petites tours de garde sont ?? l???abandon. Derri??re elles, un large foss?? s???enfonce dans un ??pais brouillard. Un pont-levis permet de franchir l???ab??me et m??ne jusqu\'?? une arche, d??bouchant sur la cour int??rieure du ch??teau. Les cha??nes du pont-levis crissent au gr?? du vent, leurs maillons luttant en vain contre leur propre poids et la rouille qui les d??vore. Du haut des murailles, des gargouilles de pierre ne cachent pas leur sourire malsain et vous suivent inexorablement du regard. Une herse en bois, devenue verte du fait des moisissures, est suspendue ?? l???entr??e du tunnel. Derri??re, les portes du ch??teau sont ouvertes, marquant la fin de cette lumi??re ??blouissante qui inonde la cour.', '2022-12-12 11:25:57', 6),
(9, 't\'es trop choupi!', '2022-12-12 02:12:57', 7),
(10, 'Je surveille les gargouilles, je pense qu???elles sont plus que de simples statues.', '2022-12-12 13:23:30', 8),
(11, 'Le pont-levis a l???air ab??m?? ? Je pr??f??re v??rifier. Je pense pouvoir le traverser ou il risque de s???effondrer sous notre poids ?', '2023-12-12 21:24:48', 9),
(12, 'c\'est mort!', '2023-06-05 04:14:53', 9),
(13, 'Salut', '2023-11-03 22:10:16', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `Id_tokens` int NOT NULL,
  `image_token` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`Id_tokens`, `image_token`) VALUES
(1, './images/tokens/aboleth.jpeg'),
(2, './images/tokens/kobold.jpeg'),
(3, './images/tokens/assassin.jpeg'),
(4, './images/tokens/bernard.jpeg'),
(5, './images/tokens/baton.jpeg'),
(6, './images/tokens/arc_court.jpeg'),
(7, './images/tokens/armure_cuir.jpeg'),
(8, './images/tokens/corde_chanvre.jpeg'),
(9, './images/tokens/sac.jpeg'),
(10, './images/tokens/luth.jpeg'),
(11, './images/tokens/Illydia_Maethellyn.jpeg'),
(12, './images/tokens/Robec_Dentdragon.jpeg'),
(13, './images/tokens/Jarhild_Stoneforge.jpeg'),
(14, './images/tokens/Gilthas_Galadon.jpeg'),
(15, './images/tokens/Hommet_Shaw.jpeg'),
(16, './images/tokens/Javen_Tarmikos.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Id_utilisateur` int NOT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `pseudo` varchar(45) DEFAULT NULL,
  `adresse_mail` varchar(254) DEFAULT NULL,
  `mot_de_passe` varchar(45) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `date_creation_compte` date DEFAULT NULL,
  `is_premium` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_utilisateur`, `prenom`, `nom`, `pseudo`, `adresse_mail`, `mot_de_passe`, `date_de_naissance`, `date_creation_compte`, `is_premium`) VALUES
(1, 'Lorraine', 'Vinel', 'Psum', 'Lorraine Vinel lv@gmail.com', 'Lorraine', '1998-08-05', '2022-12-14', 1),
(2, 'Jorris', 'Mastellone-Ruellan', 'MRJ', 'jorris_b@gmail.com', 'Jorris', '1996-06-05', '2022-12-14', 1),
(3, 'Guillaume', 'Dupuis', 'Darky_63', 'guillaume63.dupuis@gmail.com', 'Guillaume', '2002-05-16', '2022-12-14', 1),
(4, 'Pierre', 'Lamont', 'Szorlas', 'X??A-???Musk@gmail.com', 'Pierre', '1995-08-25', '2022-12-14', 1),
(5, 'Pierre', 'Marboutin', 'HysteresiS', 'Pierre_a@mail.fr', 'Pierro', '1981-06-25', '2022-12-14', 1),
(6, 'Hermancia', 'Ndjembo', 'hermynyxxx', 'hermance@gmail.com', 'Hermancia', '1981-07-10', '2022-12-14', 1),
(7, 'Sylvain', 'Bonnel Mateu', 'Dracorde', 'bonnelmateu.sylvain@gmail.com', 'Sylvain', '1995-09-12', '2022-12-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilise`
--

CREATE TABLE `utilise` (
  `Id_systeme_jeux` int NOT NULL,
  `Id_competence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilise`
--

INSERT INTO `utilise` (`Id_systeme_jeux`, `Id_competence`) VALUES
(1, 1),
(1, 2),
(1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`Id_utilisateur`,`Id_instance_de_partie`,`Id_fiche_personnage`),
  ADD KEY `Id_instance_de_partie` (`Id_instance_de_partie`),
  ADD KEY `Id_fiche_personnage` (`Id_fiche_personnage`);

--
-- Indexes for table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`Id_systeme_jeux`,`Id_race`),
  ADD KEY `Id_race` (`Id_race`);

--
-- Indexes for table `bestiaire`
--
ALTER TABLE `bestiaire`
  ADD PRIMARY KEY (`Id_bestiaire`);

--
-- Indexes for table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD PRIMARY KEY (`Id_caracteristique`),
  ADD KEY `Id_fiche_personnage` (`Id_fiche_personnage`),
  ADD KEY `Id_bestiaire` (`Id_bestiaire`);

--
-- Indexes for table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`Id_carte`);

--
-- Indexes for table `classe_personnage`
--
ALTER TABLE `classe_personnage`
  ADD PRIMARY KEY (`Id_classe_personnage`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`Id_commande`);

--
-- Indexes for table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`Id_competence`);

--
-- Indexes for table `compose`
--
ALTER TABLE `compose`
  ADD PRIMARY KEY (`Id_produit_vente`,`Id_commande`),
  ADD KEY `Id_commande` (`Id_commande`);

--
-- Indexes for table `depend`
--
ALTER TABLE `depend`
  ADD PRIMARY KEY (`Id_classe_personnage`,`Id_fiche_personnage`),
  ADD KEY `Id_fiche_personnage` (`Id_fiche_personnage`);

--
-- Indexes for table `deroule`
--
ALTER TABLE `deroule`
  ADD PRIMARY KEY (`Id_maps`,`Id_instance_de_partie`),
  ADD KEY `Id_instance_de_partie` (`Id_instance_de_partie`);

--
-- Indexes for table `detient`
--
ALTER TABLE `detient`
  ADD PRIMARY KEY (`Id_bestiaire`,`Id_competence`),
  ADD KEY `Id_competence` (`Id_competence`);

--
-- Indexes for table `droits`
--
ALTER TABLE `droits`
  ADD PRIMARY KEY (`Id_droits`);

--
-- Indexes for table `ecrit`
--
ALTER TABLE `ecrit`
  ADD PRIMARY KEY (`Id_utilisateur`,`Id_tchat`),
  ADD KEY `Id_tchat` (`Id_tchat`);

--
-- Indexes for table `entrepose`
--
ALTER TABLE `entrepose`
  ADD PRIMARY KEY (`Id_maps`,`Id_items`),
  ADD KEY `Id_items` (`Id_items`);

--
-- Indexes for table `fiche_personnage`
--
ALTER TABLE `fiche_personnage`
  ADD PRIMARY KEY (`Id_fiche_personnage`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`Id_forum`);

--
-- Indexes for table `herite`
--
ALTER TABLE `herite`
  ADD PRIMARY KEY (`Id_competence`,`Id_race`),
  ADD KEY `Id_race` (`Id_race`);

--
-- Indexes for table `illustre`
--
ALTER TABLE `illustre`
  ADD PRIMARY KEY (`Id_items`,`Id_tokens`),
  ADD KEY `Id_tokens` (`Id_tokens`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`Id_utilisateur`,`Id_maps`),
  ADD KEY `Id_maps` (`Id_maps`);

--
-- Indexes for table `incarne`
--
ALTER TABLE `incarne`
  ADD PRIMARY KEY (`Id_bestiaire`,`Id_tokens`),
  ADD KEY `Id_tokens` (`Id_tokens`);

--
-- Indexes for table `instance_de_partie`
--
ALTER TABLE `instance_de_partie`
  ADD PRIMARY KEY (`Id_instance_de_partie`),
  ADD KEY `Id_systeme_jeux` (`Id_systeme_jeux`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Id_items`);

--
-- Indexes for table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`Id_systeme_jeux`,`Id_classe_personnage`),
  ADD KEY `Id_classe_personnage` (`Id_classe_personnage`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`Id_maps`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id_message`),
  ADD KEY `Id_forum` (`Id_forum`),
  ADD KEY `Id_message_1` (`Id_message_1`),
  ADD KEY `Id_utilisateur` (`Id_utilisateur`),
  ADD KEY `Id_utilisateur_1` (`Id_utilisateur_1`);

--
-- Indexes for table `necessite`
--
ALTER TABLE `necessite`
  ADD PRIMARY KEY (`Id_classe_personnage`,`Id_competence`),
  ADD KEY `Id_competence` (`Id_competence`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`Id_paiement`),
  ADD KEY `Id_commande` (`Id_commande`);

--
-- Indexes for table `participe`
--
ALTER TABLE `participe`
  ADD PRIMARY KEY (`Id_utilisateur`,`Id_instance_de_partie`,`Id_droits`),
  ADD KEY `Id_instance_de_partie` (`Id_instance_de_partie`),
  ADD KEY `Id_droits` (`Id_droits`);

--
-- Indexes for table `peuple`
--
ALTER TABLE `peuple`
  ADD PRIMARY KEY (`Id_items`,`Id_systeme_jeux`),
  ADD KEY `Id_systeme_jeux` (`Id_systeme_jeux`);

--
-- Indexes for table `possede`
--
ALTER TABLE `possede`
  ADD PRIMARY KEY (`Id_fiche_personnage`,`Id_competence`),
  ADD KEY `Id_competence` (`Id_competence`);

--
-- Indexes for table `prend`
--
ALTER TABLE `prend`
  ADD PRIMARY KEY (`Id_utilisateur`,`Id_paiement`),
  ADD KEY `Id_paiement` (`Id_paiement`);

--
-- Indexes for table `produit_vente`
--
ALTER TABLE `produit_vente`
  ADD PRIMARY KEY (`Id_produit_vente`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`Id_race`);

--
-- Indexes for table `regle_jeux`
--
ALTER TABLE `regle_jeux`
  ADD PRIMARY KEY (`Id_regle_jeux`),
  ADD KEY `Id_systeme_jeux` (`Id_systeme_jeux`);

--
-- Indexes for table `regroupe`
--
ALTER TABLE `regroupe`
  ADD PRIMARY KEY (`Id_bestiaire`,`Id_systeme_jeux`),
  ADD KEY `Id_systeme_jeux` (`Id_systeme_jeux`);

--
-- Indexes for table `represente`
--
ALTER TABLE `represente`
  ADD PRIMARY KEY (`Id_fiche_personnage`,`Id_tokens`),
  ADD KEY `Id_tokens` (`Id_tokens`);

--
-- Indexes for table `requiert`
--
ALTER TABLE `requiert`
  ADD PRIMARY KEY (`Id_systeme_jeux`,`Id_carte`),
  ADD KEY `Id_carte` (`Id_carte`);

--
-- Indexes for table `sied`
--
ALTER TABLE `sied`
  ADD PRIMARY KEY (`Id_fiche_personnage`,`Id_race`),
  ADD KEY `Id_race` (`Id_race`);

--
-- Indexes for table `stocke`
--
ALTER TABLE `stocke`
  ADD PRIMARY KEY (`Id_items`,`Id_fiche_personnage`),
  ADD KEY `Id_fiche_personnage` (`Id_fiche_personnage`);

--
-- Indexes for table `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`Id_systeme_jeux`,`Id_style_fiche_personnage`),
  ADD KEY `Id_style_fiche_personnage` (`Id_style_fiche_personnage`);

--
-- Indexes for table `style_fiche_personnage`
--
ALTER TABLE `style_fiche_personnage`
  ADD PRIMARY KEY (`Id_style_fiche_personnage`);

--
-- Indexes for table `systeme_jeux`
--
ALTER TABLE `systeme_jeux`
  ADD PRIMARY KEY (`Id_systeme_jeux`);

--
-- Indexes for table `tchat`
--
ALTER TABLE `tchat`
  ADD PRIMARY KEY (`Id_tchat`),
  ADD KEY `Id_instance_de_partie` (`Id_instance_de_partie`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`Id_tokens`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Id_utilisateur`);

--
-- Indexes for table `utilise`
--
ALTER TABLE `utilise`
  ADD PRIMARY KEY (`Id_systeme_jeux`,`Id_competence`),
  ADD KEY `Id_competence` (`Id_competence`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bestiaire`
--
ALTER TABLE `bestiaire`
  MODIFY `Id_bestiaire` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `caracteristique`
--
ALTER TABLE `caracteristique`
  MODIFY `Id_caracteristique` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `carte`
--
ALTER TABLE `carte`
  MODIFY `Id_carte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `classe_personnage`
--
ALTER TABLE `classe_personnage`
  MODIFY `Id_classe_personnage` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `Id_commande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competence`
--
ALTER TABLE `competence`
  MODIFY `Id_competence` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `droits`
--
ALTER TABLE `droits`
  MODIFY `Id_droits` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fiche_personnage`
--
ALTER TABLE `fiche_personnage`
  MODIFY `Id_fiche_personnage` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `Id_forum` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instance_de_partie`
--
ALTER TABLE `instance_de_partie`
  MODIFY `Id_instance_de_partie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Id_items` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `Id_maps` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Id_message` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `Id_paiement` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produit_vente`
--
ALTER TABLE `produit_vente`
  MODIFY `Id_produit_vente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `Id_race` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regle_jeux`
--
ALTER TABLE `regle_jeux`
  MODIFY `Id_regle_jeux` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `style_fiche_personnage`
--
ALTER TABLE `style_fiche_personnage`
  MODIFY `Id_style_fiche_personnage` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `systeme_jeux`
--
ALTER TABLE `systeme_jeux`
  MODIFY `Id_systeme_jeux` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tchat`
--
ALTER TABLE `tchat`
  MODIFY `Id_tchat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `Id_tokens` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `Id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `a`
--
ALTER TABLE `a`
  ADD CONSTRAINT `a_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `a_ibfk_2` FOREIGN KEY (`Id_instance_de_partie`) REFERENCES `instance_de_partie` (`Id_instance_de_partie`),
  ADD CONSTRAINT `a_ibfk_4` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`);

--
-- Constraints for table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`Id_race`) REFERENCES `race` (`Id_race`);

--
-- Constraints for table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD CONSTRAINT `caracteristique_ibfk_1` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`),
  ADD CONSTRAINT `caracteristique_ibfk_2` FOREIGN KEY (`Id_bestiaire`) REFERENCES `bestiaire` (`Id_bestiaire`);

--
-- Constraints for table `compose`
--
ALTER TABLE `compose`
  ADD CONSTRAINT `compose_ibfk_1` FOREIGN KEY (`Id_produit_vente`) REFERENCES `produit_vente` (`Id_produit_vente`),
  ADD CONSTRAINT `compose_ibfk_2` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`);

--
-- Constraints for table `depend`
--
ALTER TABLE `depend`
  ADD CONSTRAINT `depend_ibfk_1` FOREIGN KEY (`Id_classe_personnage`) REFERENCES `classe_personnage` (`Id_classe_personnage`),
  ADD CONSTRAINT `depend_ibfk_2` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`);

--
-- Constraints for table `deroule`
--
ALTER TABLE `deroule`
  ADD CONSTRAINT `deroule_ibfk_1` FOREIGN KEY (`Id_maps`) REFERENCES `maps` (`Id_maps`),
  ADD CONSTRAINT `deroule_ibfk_2` FOREIGN KEY (`Id_instance_de_partie`) REFERENCES `instance_de_partie` (`Id_instance_de_partie`);

--
-- Constraints for table `detient`
--
ALTER TABLE `detient`
  ADD CONSTRAINT `detient_ibfk_1` FOREIGN KEY (`Id_bestiaire`) REFERENCES `bestiaire` (`Id_bestiaire`),
  ADD CONSTRAINT `detient_ibfk_2` FOREIGN KEY (`Id_competence`) REFERENCES `competence` (`Id_competence`);

--
-- Constraints for table `ecrit`
--
ALTER TABLE `ecrit`
  ADD CONSTRAINT `ecrit_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `ecrit_ibfk_2` FOREIGN KEY (`Id_tchat`) REFERENCES `tchat` (`Id_tchat`);

--
-- Constraints for table `entrepose`
--
ALTER TABLE `entrepose`
  ADD CONSTRAINT `entrepose_ibfk_1` FOREIGN KEY (`Id_maps`) REFERENCES `maps` (`Id_maps`),
  ADD CONSTRAINT `entrepose_ibfk_2` FOREIGN KEY (`Id_items`) REFERENCES `items` (`Id_items`);

--
-- Constraints for table `herite`
--
ALTER TABLE `herite`
  ADD CONSTRAINT `herite_ibfk_1` FOREIGN KEY (`Id_competence`) REFERENCES `competence` (`Id_competence`),
  ADD CONSTRAINT `herite_ibfk_2` FOREIGN KEY (`Id_race`) REFERENCES `race` (`Id_race`);

--
-- Constraints for table `illustre`
--
ALTER TABLE `illustre`
  ADD CONSTRAINT `illustre_ibfk_1` FOREIGN KEY (`Id_items`) REFERENCES `items` (`Id_items`),
  ADD CONSTRAINT `illustre_ibfk_2` FOREIGN KEY (`Id_tokens`) REFERENCES `tokens` (`Id_tokens`);

--
-- Constraints for table `import`
--
ALTER TABLE `import`
  ADD CONSTRAINT `import_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `import_ibfk_2` FOREIGN KEY (`Id_maps`) REFERENCES `maps` (`Id_maps`);

--
-- Constraints for table `incarne`
--
ALTER TABLE `incarne`
  ADD CONSTRAINT `incarne_ibfk_1` FOREIGN KEY (`Id_bestiaire`) REFERENCES `bestiaire` (`Id_bestiaire`),
  ADD CONSTRAINT `incarne_ibfk_2` FOREIGN KEY (`Id_tokens`) REFERENCES `tokens` (`Id_tokens`);

--
-- Constraints for table `instance_de_partie`
--
ALTER TABLE `instance_de_partie`
  ADD CONSTRAINT `instance_de_partie_ibfk_2` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`);

--
-- Constraints for table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`),
  ADD CONSTRAINT `joue_ibfk_2` FOREIGN KEY (`Id_classe_personnage`) REFERENCES `classe_personnage` (`Id_classe_personnage`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`Id_forum`) REFERENCES `forum` (`Id_forum`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`Id_message_1`) REFERENCES `message` (`Id_message`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `message_ibfk_4` FOREIGN KEY (`Id_utilisateur_1`) REFERENCES `utilisateur` (`Id_utilisateur`);

--
-- Constraints for table `necessite`
--
ALTER TABLE `necessite`
  ADD CONSTRAINT `necessite_ibfk_1` FOREIGN KEY (`Id_classe_personnage`) REFERENCES `classe_personnage` (`Id_classe_personnage`),
  ADD CONSTRAINT `necessite_ibfk_2` FOREIGN KEY (`Id_competence`) REFERENCES `competence` (`Id_competence`);

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`);

--
-- Constraints for table `participe`
--
ALTER TABLE `participe`
  ADD CONSTRAINT `participe_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `participe_ibfk_2` FOREIGN KEY (`Id_instance_de_partie`) REFERENCES `instance_de_partie` (`Id_instance_de_partie`),
  ADD CONSTRAINT `participe_ibfk_3` FOREIGN KEY (`Id_droits`) REFERENCES `droits` (`Id_droits`);

--
-- Constraints for table `peuple`
--
ALTER TABLE `peuple`
  ADD CONSTRAINT `peuple_ibfk_1` FOREIGN KEY (`Id_items`) REFERENCES `items` (`Id_items`),
  ADD CONSTRAINT `peuple_ibfk_2` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`);

--
-- Constraints for table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `possede_ibfk_1` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`),
  ADD CONSTRAINT `possede_ibfk_2` FOREIGN KEY (`Id_competence`) REFERENCES `competence` (`Id_competence`);

--
-- Constraints for table `prend`
--
ALTER TABLE `prend`
  ADD CONSTRAINT `prend_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`),
  ADD CONSTRAINT `prend_ibfk_2` FOREIGN KEY (`Id_paiement`) REFERENCES `paiement` (`Id_paiement`);

--
-- Constraints for table `regle_jeux`
--
ALTER TABLE `regle_jeux`
  ADD CONSTRAINT `regle_jeux_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`);

--
-- Constraints for table `regroupe`
--
ALTER TABLE `regroupe`
  ADD CONSTRAINT `regroupe_ibfk_1` FOREIGN KEY (`Id_bestiaire`) REFERENCES `bestiaire` (`Id_bestiaire`),
  ADD CONSTRAINT `regroupe_ibfk_2` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`);

--
-- Constraints for table `represente`
--
ALTER TABLE `represente`
  ADD CONSTRAINT `represente_ibfk_1` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`),
  ADD CONSTRAINT `represente_ibfk_2` FOREIGN KEY (`Id_tokens`) REFERENCES `tokens` (`Id_tokens`);

--
-- Constraints for table `requiert`
--
ALTER TABLE `requiert`
  ADD CONSTRAINT `requiert_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`),
  ADD CONSTRAINT `requiert_ibfk_2` FOREIGN KEY (`Id_carte`) REFERENCES `carte` (`Id_carte`);

--
-- Constraints for table `sied`
--
ALTER TABLE `sied`
  ADD CONSTRAINT `sied_ibfk_1` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`),
  ADD CONSTRAINT `sied_ibfk_2` FOREIGN KEY (`Id_race`) REFERENCES `race` (`Id_race`);

--
-- Constraints for table `stocke`
--
ALTER TABLE `stocke`
  ADD CONSTRAINT `stocke_ibfk_1` FOREIGN KEY (`Id_items`) REFERENCES `items` (`Id_items`),
  ADD CONSTRAINT `stocke_ibfk_2` FOREIGN KEY (`Id_fiche_personnage`) REFERENCES `fiche_personnage` (`Id_fiche_personnage`);

--
-- Constraints for table `structure`
--
ALTER TABLE `structure`
  ADD CONSTRAINT `structure_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`),
  ADD CONSTRAINT `structure_ibfk_2` FOREIGN KEY (`Id_style_fiche_personnage`) REFERENCES `style_fiche_personnage` (`Id_style_fiche_personnage`);

--
-- Constraints for table `tchat`
--
ALTER TABLE `tchat`
  ADD CONSTRAINT `tchat_ibfk_1` FOREIGN KEY (`Id_instance_de_partie`) REFERENCES `instance_de_partie` (`Id_instance_de_partie`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `utilise`
--
ALTER TABLE `utilise`
  ADD CONSTRAINT `utilise_ibfk_1` FOREIGN KEY (`Id_systeme_jeux`) REFERENCES `systeme_jeux` (`Id_systeme_jeux`),
  ADD CONSTRAINT `utilise_ibfk_2` FOREIGN KEY (`Id_competence`) REFERENCES `competence` (`Id_competence`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
