-- table niveau et FK : id_inventaire 

INSERT INTO `fiche_personnage`(`alignement`, `niveau_social`, `pseudo`, `description`, `avantage_desavantage`, `niveau`)
VALUES ('loyal','Mage','Illydia Maethellyn','Illydia est la fille puînée d un noble seigneur elfique. Elle bénéficia comme son frère aîné d une éducation nobiliaire complète allant de l histoire de sa famille au maniement de lépée ou de larc de chasse en passant par la diplomatie et lapprentissage des langues des peuples amis et ennemis. ','les avantages et les desavantages','5'),

('Bon','Enfant des rues','Robec Dentdragon','Robec fut dans sa prime jeunesse un petit halfelin doux et rieur, mais par un caprice cruel du destin il se retrouva très jeune, orphelin, errant dans les rues de cette cité qu"il ne connaissait pas. Dépérissant à vue d’œil, se faisant voler par d"autres, plus agressifs que lui, les maigres trognons qu"il réussissait à trouver, les passants indifférents ne donnaient pas cher de sa peau.','les avantages et les desavantages','4'),

('Neutre','Soldat','Jarhild Stoneforge','Jarhild est fille de forgeron, et plus précisément d"un des maîtres de forge les plus renommées de sa cité. Le talent de celui-ci était tel que la rumeur lui prêtait la capacité de plier n"importe quel métal, même ceux durs comme la pierre, à sa volonté. C"est pour cela qu"il était surnommé Stoneforge.','les avantages et les desavantage','3'),

('Chaotique','S   age','Gilthas Galadon','Gilthas a grandi au sein d"une fratrie de combattants et perdait toujours aux jeux physiques. Ses capacités intellectuelles très au dessus de la moyenne ne l"aidaient pas non plus, elles provoquaient le malaise chez les autres jeunes. Très tôt il prit l"habitude de parler tout doucement, en murmurant et en utilisant des mots savants qu"il inventait même parfois pour l"occasion. Il créait des jeux aux règles compliqués que les autres ne pouvaient pas suivre…','les avantages et les desavantages','6'),

('loyal','Sage','Hommet Shaw',' Fils unique de Matthias et Janet, paysans au train de vie modeste, Hommet a grandi loin des grandes villes et n"a jamais été un enfant comme les autres. Alors que ses camarades jouaient à kobold-perché, lui capturait et disséquait de petits animaux, comme des grenouilles, des pigeons ou encore des écureuils. ','les avantages et les desavantages','6'),

('Chaotique','Chevalier','Javen Tarmikos',' Javen vit le jour dans une famille noble. Il vécut son enfance comme écuyer d"un paladin et apprit auprès de lui la voie de la chevalerie, ainsi que l"histoire de son ordre et les doctrines religieuses de celui-ci.','les avantages et les desavantages','6');


-- table instance de partie

INSERT INTO `classe_personnage` (`description`, `nom`) 
VALUES ('Peu de sociétés barbares sont identiques, même si la plupart d"entre elles partagent nombre de valeurs communes et la même structure sociale. Ceci s"explique par le fait que le climat et le terrain influent significativement sur ces sociétés sauvages, tout comme pour les sociétés civilisées d"ailleurs. Les installations, la nourriture et le niveau de vie ont également un fort impact sur leur manière de s"adapter à leur environnement naturel. Les exemples suivants détaillent les types de sociétés barbares les plus communes.', 'Barbare'),
('Les bardes du collège de la loi ont passé des années à étudier l"art subtil de la manipulation et de la logique. Ils sont experts pour tisser des histoires convaincantes et pour transformer des demi-vérités en arguments crédibles, capables de séduire le plus pragmatique des publics. Les bardes du collège de la loi sont aussi excellents pour déchiffrer les émotions et le langage corporel afin de jauger les penchants de leur audience et d"adapter leur plaidoyer en fonction. Rares sont ceux à sortir vainqueur d"un débat avec un barde du collège de la loi, la plupart de leurs opposants finissent d"ailleurs par être de leur avis.', 'Barde'),
('Les dieux du vent, tels que Aurile, Fharlanghn, Zeboim et le Voyageur, accordent moins d"importance à l"attachement aux lieux et aux gens pour favoriser ceux qui ont soif de voyages et qui suivent leur propre voie. « Je vais là où le vent me porte » est une phrase que nombre d"aventuriers ont déjà prononcée, mais aucun n"incarne si bien cette idée que les clercs du domaine du vent. Ils recherchent la véritable liberté, se débarrassant de leurs soucis et de leurs attaches, séduit par l"idée de devenir libre comme l"air.', 'Clerc'),
('Les druides des cendres pensent que les vieilles choses doivent être brûlées afin de laisser place à quelque chose de meilleur qui pourra émerger des cendres. Un membre de ce cercle peut être devenu druide dans une forêt où les feux sont courants ou alors près d"un puissant volcan. Quelles que soient vos origines, vous savez que beaucoup de choses en ce monde stagnent, cessent de croître ou même finissent par se corrompre ou se détériorer. Pour vous, la valeur du feu vient de sa force de destruction créative ; une façon de détruire l"ancien afin de laisser place au renouveau. Les druides de ce cercle ont adopté le phénix comme symbole de mort, de dégradation et de renaissance. Ils ont pour habitude de planter des graines sur leurs ennemis
décédés afin que la vie puisse renaitre de leur cendre.', 'Druide'),
('Une liche n"est pas un mort-vivant comme les autres. À la différence des zombis et autres squelettes, c"est une créature très puissante, hautement intelligente et douée d"une volonté propre. Mais surtout, une liche est le résultat d"un rituel perpétré par un magicien de haut niveau prêt à tout sacrifier pour obtenir la vie éternelle.', 'Liche'),
('Résumer l"art de la nécromancie au fait de seulement animer des corps ou parler avec les esprits de personnes mortes depuis longtemps est une erreur. La nécromancie recouvre en réalité une multitude de disciplines, toutes distinctes, mais liées. Un nécromancien accompli est au minimum familier avec toutes et s"efforcera d"obtenir la maîtrise de plusieurs d"entre elles. Mais toutes les questions liées à la mort étant du domaine de ces magiciens, cela les conduit inévitablement à un moment ou un autre à vouloir manipuler les forces de la mort et les morts-vivants, s’attirant alors le rejet de la société dans son ensemble. Leur art est en effet considéré comme une perversion de l"ordre naturel du monde, car la mort est vue comme la fin ultime de toutes choses par la plupart des civilisations, au moins celles du monde Matériel. Qu"un nécromancien utilise ses pouvoirs pour faire apparaître la vie sur un cadavre ou rappeler l"esprit d’une personne décédée est très souvent considéré comme une abomination. Quelles que soient leurs véritables motivations et leurs ambitions, les nécromanciens sont donc considérés comme des êtres mauvais par le commun des mortels, et font fréquemment face à un certain degré de méfiance et de suspicion parmi leurs pairs initiés des arcanes.', 'Nécromant');


-- Hermy
INSERT INTO maps (nom, image, epoque, categorie)
VALUES ('Dead in Thay', '././image/maps/dead_in_thay.html/maps/Dead_in_thay.html', 'medieval', 'ville'),
('Lost Mine of Phandelver', './image/maps/Lost_Mine_of_Phandelver.html', 'medieval', 'côte'),
('Omu', './image/maps/omu.html', 'medieval', 'ville'),
('Bibliothèque', './image/maps/bibliotheque.html', 'medieval', 'bibliothèque'),
('Abbaye', './image/maps/abbaye.html', 'medieval', 'abbaye'),
('Banquise', './image/maps/banquise.html', 'medieval', 'extérieur'),
('Camp', './image/maps/camp.html', 'medieval', 'extérieur'),
('Clairière', './image/maps/clairiere.html', 'medieval', 'extérieur'),
('Croisement', './image/maps/croisement.html', 'medieval', 'extérieur'),
('Auberge/RdC', './image/maps/auberge_rdc.html', 'medieval', 'extérieur'),
('Taverne', './image/maps/taverne.html', 'medieval', 'intérieur'),
('Temple', './image/maps/temple.html', 'medieval', 'intérieur'),
('Ville Lacustre', './image/maps/ville_lacustre.html', 'medieval', 'intérieur'),
('Guilde voleurs', './image/maps/Guilde_voleur.html', 'medieval', 'intérieur'),
('Maison, cercueils', './image/maps/maison_cercueils.html', 'medieval', 'intérieur');


--hermy forum
insert into forum (categorie, sujet)
values ('Annonce', 'Sortie du jeu'),
('Nouveautés',' Nouvelles règles '),
('API script', 'Token mod help'),
('Suggestions, idées', 'Customiser les dés');

-- table deroule
INSERT INTO `deroule` (`Id_maps`, `Id_instance_de_partie`)
VALUES (1,1),
(2,1),
(3,1),
(1,2),
(2,2);


table ecrit

INSERT INTO `ecrit` (`Id_utlisateur`, `Id_tchat`)
VALUES (1,0),
(2,1),
(3,2),
(4,3),
(1,4);
(2,5),
(3,6),
(2,7),
(0,8),
(2,9),
(2,10),
(2,11),
(1,12);

INSERT INTO `ecrit` (`document_regle`, `Id_regle_jeux`,`categorie`, `descriptif`)
VALUES ('https://donjonetdragon.fr/ressources/pdf/',1,'regle',"Le jeu de rôle Dungeons & Dragons baigne dans
un univers de combats et de magie. De
nombreux jeux de notre enfance sont basés sur
l’immersion. Au même titre, D&D s’appuie sur
l’imagination. Il s’agit de détailler le château
fort par une nuit de tempête et imaginer
comment un a"),
('https://www.aidedd.org/regles/creation-de-perso/',1,'creation de personnage',"La première étape d'une partie de Dungeons & Dragons est d'imaginer et de se créer son propre personnage. Un personnage est défini par des statistiques de jeu, des accroches de roleplay, et par votre imagination. Vous choisissez une race (comme humain ou halfelin) et une classe (comme guerrier ou magicien). Vous inventez aussi la personnalité, l'apparence et l'histoire de votre personnage. Une fois cela achevé, votre personnage est votre avatar dans le monde de Dungeons & Dragons."),
('https://www.aidedd.org/regles/classes/',1,'classe',"Les aventuriers sont des personnes extraordinaires poussées par la soif de l'excitation vers une vie que d'autres n'oseraient jamais imaginer. Ce sont des héros, contraints d'explorer les endroits les plus sombres et d'aborder des défis que les femmes et les hommes communs ne pourraient surmonter.");


-- https://donjonetdragon.fr/ressources/pdf/
-- https://www.aidedd.org/regles/creation-de-perso/
-- ttps://www.aidedd.org/regles/classes/
