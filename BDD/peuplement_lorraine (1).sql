
INSERT INTO `requiert` (`Id_systeme_jeux`,`Id_carte`)
VALUES
  (4,53),
  (4,54),
  (4,55)
;


INSERT INTO `structure` (`Id_systeme_jeux`,`Id_style_fiche_personnage`)
VALUES
  (1,1),
  (1,2),
  (2,3),
  (3,4),
  (4,5)
;


INSERT INTO `illustre` (`Id_items`,`Id_tokens`)
VALUES
  (1,5),
  (2,6),
  (3,7),
  (4,8),
  (5,9),
  (6,10)
;

INSERT INTO `incarne` (`Id_bestaire`,`Id_tokens`)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4)
;


INSERT INTO `represente` (`Id_fiche_personnage`,`Id_tokens`)
VALUES
  (1,11),
  (2,12),
  (3,13),
  (4,14),
  (5,15),
  (6,16)
;


INSERT INTO `a` (`Id_instance_de_partie`,`Id_utilisateur`,`Id_fiche_personnage`)
VALUES
  (1,1,1),
  (2,2,2),
  (3,3,3),
  (4,4,4),
  (5,5,5),
  (6,6,6),
  (7,7,7),
  (8,8,8),
  (9,1,9),
  (10,2,10)
;




INSERT INTO `sied` (`Id_fiche_personnage`,`Id_race`)
VALUES
  (1,1),
  (2,1),
  (3,2),
  (4,2),
  (5,3),
  (6,4)
;


INSERT INTO `possede` (`Id_fiche_personnage`,`Id_competence`)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,1),
  (3,1),
  (4,2),
  (4,3),
  (5,2),
  (6,3)
;


INSERT INTO `depend` (Id_fiche_personnage,`Id_classe_personnage`)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6)
;

INSERT INTO `appartient` (Id_systeme_jeux,`Id_race`)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,4)
;


INSERT INTO `utilise` (Id_systeme_jeux,`Id_competence`)
VALUES
  (1,1),
  (1,2),
  (1,3)
;


INSERT INTO `joue` (Id_systeme_jeux,`Id_classe_personnage`)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,4),
  (1,5),
  (1,6)
;

INSERT INTO `regroupe` (Id_systeme_jeux,`Id_bestiaire`)
VALUES
  (1,1),
  (1,2),
  (1,3)
;

INSERT INTO `peuple` (Id_systeme_jeux,`Id_item`)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,4),
  (1,5),
  (1,6)
;
