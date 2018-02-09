//nul = [] execVM "introscript\path.sqf";

//MyPath =  compile preprocessFile "introscript\path.sqf"; //==> A ajouter à l'init le temps de l'enregistrement

//rec = [unit1,10] spawn BIS_fnc_UnitCapture; //[nom de l'unité , temps d'enregistrement en secondes] // dans la console
/// appuyer 2 fois sur echap à la fin de la capture (retour console puis retour jeu) pour copier le chemin dans le presse papier


Path1=; ///===> Coller le chemin obtenu entre le = et le ; (possibilité de créer plusieurs chemins (path1, 2 etc)


[target1, Path1] spawn BIS_fnc_UnitPlay;
