//

//nul= execVM "outroscript\endcredits.sqf"; //Affiche les crédits
//[20, "NOMDEMISSION", "Mr. H", "La team TGV qui comme d'habitude a servi de cobaye<br/>en particulier Red-tu t'emmerdes pour rien- belette<br/> et <br/> TGV Anto cobaye numero 1...", "<br/><br/>Cette mission est inspirée d'un contexte réel <br/> mais les faits relatés sont imaginaires.<br/><br/>", "Crédits musicaux: <br/><br/>The Chariot - Your<br/><br/>The Chariot - First<br/><br/>Sur l'album One Wing<br/><br/>Scripts et artworks par Mr H.<br/><br/>Mods par leurs auteurs respectifs<br/><br/> Le mod TGV ExtraMods et le mod TGV Misc Assets sont des compilations de mod externes<br/> tout le crédit va à leurs auteurs respectifs.<br/><br/>Roster et module JIP par Mr H.<br/> Mr H. 2017"] execVM "outroscript\endcreditsv2.sqf";
//playSound ""; //joue la musique


//===prise de vue CF Documentations "cutscene"
//Prise1 travel arriere et titre
///////////cam1/cam2/ cible /dur/foc1/foc2/attach/ x/y/ z /effet   /trans/durtrans
prise1 = [out1, outcam1,out1,5, 1, 1 ,false, 0, 0, 0,"blur","none",0] execVM "introscript\machinery\cam.sqf";
waitUntil {scriptDone prise1}; 






////======destruction de la camera ne pas editer 
_cam = "camera" camCreate (position player);
camDestroy _cam;
player cameraEffect ["terminate","back"];

/////=====termine la mission avec la fin selectionnée (cf description.ext) valide les taches
["end3",true,true,false,true]spawn BIS_fnc_endMission; 