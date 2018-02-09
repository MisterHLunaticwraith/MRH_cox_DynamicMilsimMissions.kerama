///=============Texte d'intro=============
sleep 10;////délais avant que le texte ne s'affiche
[
	[
		"*********"////texte 1 remplacer les étoiles par le texte
	],
	[
		(str(date select 2) + "-" + str(date select 1) + "-" + str(date select 0)),/////date prise des réglages de mission
		1,
		5
	],
	[
		"*************", ////texte 2 s'affiche plus tard
		1, 
		1, 
		4
	]
] spawn BIS_fnc_EXP_camp_SITREP;
