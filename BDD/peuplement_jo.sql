INSERT INTO competence(nom, prerequis, niveau, description, is_concentration, is_rituel, ecole)
 VALUES ('Agrandissement/Rapetissement',
    'V, S, M (une pincée de poudre de fer)',
    2,
    'Vous agrandissez ou réduisez en taille une créature ou un objet que vous pouvez voir et qui est à portée pour la durée du sort. Choisissez une créature ou un objet qui n est pas porté ou transporté. Si la cible n est pas consentante, elle peut effectuer un jet de sauvegarde de Constitution. En cas de réussite, le sort n a aucun effet.Si la cible est une créature, toutes les choses qu elle porte et transporte changent de taille avec elle. Tout objet lâché par la créature affectée reprend sa taille normale.Agrandissement. La cible double dans toutes les dimensions, et son poids est multiplié par huit. Cela augmente sa taille d une catégorie, de M à G par exemple. S il n y a pas assez de place dans la pièce pour que la cible double de taille, la créature ou l objet atteint la taille maximale possible dans l espace disponible. Jusquà la fin du sort, la cible a aussi un avantage à ses jets de Force et ses jets de sauvegarde de Force. Les armes de la cible grandissent également. Tant que ces armes sont agrandies, les attaques de la cible occasionnent 1d4 dégâts supplémentaires.Rapetissement. La taille de la cible est diminuée de moitié dans toutes les dimensions, et son poids est divisé par huit. Cette réduction diminue sa taille dune catégorie, de M à P par exemple. Jusquà la fin du sort, la cible a un désavantage à ses jets de Force et à ses jets de sauvegarde de Force. Les armes de la cible rapetissent aussi. Tant que ces armes sont réduites, les attaques de la cible occasionnent 1d4 dégâts en moins (minimum 1 point de dégâts).',
    true,
    true,
    'transmutation'),
 
   ('Aide',
    'V, S, M (un petit bout de vêtement blanc)',
    2,
    'Votre sort emplit vos alliés de robustesse et de résolution. Choisissez jusquà trois créatures à portée. Le maximum de points de vie et les points de vie actuels de chaque cible augmentent de 5 pour la durée du sort.Aux niveaux supérieurs. Lorsque vous lancez ce sort en utilisant un emplacement de sort de niveau 3 ou supérieur, les points de vie de chaque cible augmentent de 5 pour chaque niveau d emplacement au-delà du niveau 2.',
    true,
    false,
    'abjuration' ),
 
   ('Alarme',
    'V, S, M (une petite clochette et un morceau de fil dargent fin)',
    1,
    'Vous mettez en place une alarme contre les intrusions indésirables. Choisissez une porte, une fenêtre, ou une zone à portée qui ne dépasse pas un cube de 6 mètres darête. Jusquà la fin du sort, une alarme vous alerte lorsquune créature de taille TP ou supérieure touche ou pénètre la zone surveillée. Lorsque vous lancez ce sort, vous pouvez désigner des créatures qui ne déclencheront pas l alarme. Vous pouvez également choisir si l alarme est audible ou juste mentale.Une alarme mentale vous alerte avec une sonnerie dans votre esprit à condition que vous soyez à 1,5 kilomètre maximum de la zone surveillée. Cette sonnerie vous réveille si vous êtes endormi. Une alarme audible produit le son d une clochette à main, pendant 10 secondes, pouvant être entendue à 18 mètres.',
    false,
    true,
    'abjuration');



INSERT INTO produit_vente(nom, prix, type, description)
 VALUES("Dungeons & Dragons - Dungeon Master 's Guide : Guide du maitre - 5ème Édition",
    39.99,
    "physique",
    "Le Dungeon Master’s Guide est une mine d’inspiration et de conseils qui enflammera votre imagination et vous aidera à créer des mondes d’aventures que vos joueurs se feront un plaisir d’explorer.Dans ses pages, vous trouverez des conseils pour bâtir un monde, des astuces pour concevoir des donjons et de grandes aventures, des règles de jeu optionnelles, des centaines d’objets magiques typiques de D&D ® et bien d’autres outils pour vous aider à devenir un maître du donjon accompli."
    ),
    
    ("Donjons & Dragons Tomb of annihilation - Black book edition",
    49.99,
    "physique",
    "Oserez-vous défier la mort dans cette aventure conçue pour le meilleur jeu de rôle au monde ? Bienvenue dans la jungle !Une malédiction mortelle s’abat sur les morts déjà ramenés à la vie : ils se mettent à pourrir et tous les efforts déployés pour enrayer la décomposition restent vains. Les âmes des trépassés sont maintenant volées à leur mort, les unes après les autres, et piégées dans un artefact nécromantique. Ce n’est qu’en détruisant cette chose qu’elles seront libérées et que l’on pourra de nouveau ramener les défunts à la vie. Tous les indices mènent au Chult, un pays mystérieux fait de volcans, de jungles et des ruines de royaumes déchus, sous lequel un tombeau mortel attend ses victimes. Le piège est tendu, mordrez-vous à l’appât ? Une aventure Dungeons & Dragons pour des personnages de niveau 1 à 11.À utiliser avec la cinquième édition du Player’s Handbook, du Monster Manualet du Dungeon Master’s Guide de Dungeons & Dragons."
    ),
    
    ("Aria : la couronne, le sceptre, et l'orbe",
    19.99,
    "pdf",  
    "Seconde partie d'Aria, La couronne, le sceptre et l'orbe contient également les règles du jeu vous permettant de créer vos personnages et de les faire évoluer. En plus des sept profils d'aventuriers de base, il propose également deux profils d'aventuriers inédits : Le créateur d'automates et le prodige. L'ouvrage vous emmènera à Aqabah, cité de la sagesse ; mais aussi visiter le Grand Vide, un désert mortel, ainsi que la mystérieuse cité d'Irem, scellée par trois portes-énigmes, à Kniga, la ville machine que se disputent alchimistes et créateurs d'automates ; peut-être oserez-vous traverser le Mur de Varna et découvrir l'Osmanlie ? Où les Dieux marchent parmi les hommes... Et où les hommes peuvent espérer devenir des Dieux."
    );


INSERT INTO commande(Id_commande, date_commande, numero)
VALUES(
	1,
	'2011-03-13 02:53:50' ,
	001
),
(
	2,
	'2011-03-13 02:53:50' ,
	002
);



INSERT INTO compose(Id_produit_vente, Id_commande)
VALUES(
	1,
	1
),
(
	2,
	1
),
(
	3,
	1
),
(
	1,
	2
),
(
	2,
	2
);




   INSERT INTO paiement (Id_commande, moyen_paiement)
VALUES(1,"carte"),
	(2,"paypal");
