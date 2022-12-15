


INSERT INTO `carte` (`image`,`descriptif`,`valeur`,`couleur`,`nom`)
VALUES
  ("./images/cartes/1coeur.png",NULL,"1","coeur",NULL),
  ("./images/cartes/2coeur.png",NULL,"2","coeur",NULL),
  ("./images/cartes/3coeur.png",NULL,"3","coeur",NULL),
  ("./images/cartes/4coeur.png",NULL,"4","coeur",NULL),
  ("./images/cartes/5coeur.png",NULL,"5","coeur",NULL),
  ("./images/cartes/6coeur.png",NULL,"6","coeur",NULL),
  ("./images/cartes/7coeur.png",NULL,"7","coeur",NULL), 
  ("./images/cartes/8coeur.png",NULL,"8","coeur",NULL),   
  ("./images/cartes/9coeur.png",NULL,"9","coeur",NULL), 
  ("./images/cartes/10coeur.png",NULL,"10","coeur",NULL),  
  ("./images/cartes/valetcoeur.png",NULL,"valet","coeur",NULL),  
  ("./images/cartes/dame.png",NULL,"dame","coeur",NULL),  
  ("./images/cartes/roicoeur.png",NULL,"roi","coeur",NULL)    
;

INSERT INTO `carte` (`image`,`descriptif`,`valeur`,`couleur`,`nom`)
VALUES
  ("./images/cartes/1trefle.png",NULL,"1","trefle",NULL),
  ("./images/cartes/2trefle.png",NULL,"2","trefle",NULL),
  ("./images/cartes/3trefle.png",NULL,"3","trefle",NULL),
  ("./images/cartes/4trefle.png",NULL,"4","trefle",NULL),
  ("./images/cartes/5trefle.png",NULL,"5","trefle",NULL),
  ("./images/cartes/6trefle.png",NULL,"6","trefle",NULL),
  ("./images/cartes/7trefle.png",NULL,"7","trefle",NULL), 
  ("./images/cartes/8trefle.png",NULL,"8","trefle",NULL),   
  ("./images/cartes/9trefle.png",NULL,"9","trefle",NULL), 
  ("./images/cartes/10trefle.png",NULL,"10","trefle",NULL),  
  ("./images/cartes/valettrefle.png",NULL,"valet","trefle",NULL),  
  ("./images/cartes/dame.png",NULL,"dame","trefle",NULL),  
  ("./images/cartes/roitrefle.png",NULL,"roi","trefle",NULL)   
;

INSERT INTO `carte` (`image`,`descriptif`,`valeur`,`couleur`,`nom`)
VALUES
  ("./images/cartes/1pique.png",NULL,"1","pique",NULL),
  ("./images/cartes/2pique.png",NULL,"2","pique",NULL),
  ("./images/cartes/3pique.png",NULL,"3","pique",NULL),
  ("./images/cartes/4pique.png",NULL,"4","pique",NULL),
  ("./images/cartes/5pique.png",NULL,"5","pique",NULL),
  ("./images/cartes/6pique.png",NULL,"6","pique",NULL),
  ("./images/cartes/7pique.png",NULL,"7","pique",NULL), 
  ("./images/cartes/8pique.png",NULL,"8","pique",NULL),   
  ("./images/cartes/9pique.png",NULL,"9","pique",NULL), 
  ("./images/cartes/10pique.png",NULL,"10","pique",NULL),  
  ("./images/cartes/valetpique.png",NULL,"valet","pique",NULL),  
  ("./images/cartes/dame.png",NULL,"dame","pique",NULL),  
  ("./images/cartes/roipique.png",NULL,"roi","pique",NULL)    
;


INSERT INTO `carte` (`image`,`descriptif`,`valeur`,`couleur`,`nom`)
VALUES
  ("./images/cartes/1carreau.png",NULL,"1","carreau",NULL),
  ("./images/cartes/2carreau.png",NULL,"2","carreau",NULL),
  ("./images/cartes/3carreau.png",NULL,"3","carreau",NULL),
  ("./images/cartes/4carreau.png",NULL,"4","carreau",NULL),
  ("./images/cartes/5carreau.png",NULL,"5","carreau",NULL),
  ("./images/cartes/6carreau.png",NULL,"6","carreau",NULL),
  ("./images/cartes/7carreau.png",NULL,"7","carreau",NULL), 
  ("./images/cartes/8carreau.png",NULL,"8","carreau",NULL),   
  ("./images/cartes/9carreau.png",NULL,"9","carreau",NULL), 
  ("./images/cartes/10carreau.png",NULL,"10","carreau",NULL),  
  ("./images/cartes/valetcarreau.png",NULL,"valet","carreau",NULL),  
  ("./images/cartes/dame.png",NULL,"dame","carreau",NULL),  
  ("./images/cartes/roicarreau.png",NULL,"roi","carreau",NULL)    
;

INSERT INTO `carte` (`image`,`descriptif`,`valeur`,`couleur`,`nom`)
VALUES
  ("./images/cartes/villageois.png","Le role nul",NULL,NULL,"Villageois"),
  ("./images/cartes/loup-garou.png","mange les villageois",NULL,NULL,"Loup-Garou"),
  ("./images/cartes/voyante.png","peut voir les cartes des autres joueurs",NULL,NULL,"Voyante")
;

INSERT INTO `systeme_jeux` (`nom_jeu`)
VALUES
  ("D&D 5eme edition"),
  ("Chtulu"),
  ("Naheulbeuk"),
  ("Loup-Garou de Thiercelieux")
;


INSERT INTO `style_fiche_personnage` (`html`,`categorie`)
VALUES
  ("./style_fiches_persos/DnD5-personnages.html","Personnage"),
  ("./style_fiches_persos/DnD5-PNJ.html","PNJ"),
  ("./style_fiches_persos/Chtulu-personnages.html","Personnage"),
  ("./style_fiches_persos/Naheulbeuk-personnages.html","Personnage"), 
  ("./style_fiches_persos/Loup-Garou-personnages.html","Personnage")  
;


INSERT INTO `race` (`nom`,`description`)
VALUES
  ("humain","basique "),
  ("monstre","fait très peur"),
  ("gobelin","vert"),
  ("elfe","grandes oreilles")
;

INSERT INTO `tokens` (`image_token`)
VALUES
  ("./images/tokens/aboleth.jpeg"),
  ("./images/tokens/kobold.jpeg"),
  ("./images/tokens/assassin.jpeg"),
  ("./images/tokens/bernard.jpeg"),
  ("./images/tokens/baton.jpeg"),
  ("./images/tokens/arc_court.jpeg"),
  ("./images/tokens/armure_cuir.jpeg"),
  ("./images/tokens/corde_chanvre.jpeg"),
  ("./images/tokens/sac.jpeg"),
  ("./images/tokens/luth.jpeg"),
  ("./images/tokens/Illydia_Maethellyn.jpeg"),
  ("./images/tokens/Robec_Dentdragon.jpeg"),
  ("./images/tokens/Jarhild_Stoneforge.jpeg"),
  ("./images/tokens/Gilthas_Galadon.jpeg"),
  ("./images/tokens/Hommet_Shaw.jpeg"),
  ("./images/tokens/Javen_Tarmikos.jpeg")
;
