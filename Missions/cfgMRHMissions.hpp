#define ROOTPATH "Missions
#define PICPATH(ARG) ROOTPATH\Images\##ARG"
#define SCRIPTPATH(ARG) ROOTPATH\Scripts\##ARG"
//PICTUREPATH(trooper.paa)
//setDate [year, month, day, hour, minute] 
class CfgMRHMissions
{
allTGVMissions[]= {"TestMission","TestMission2", "TestMission3","MRH_M1_OPRussiaWithLove","MRH_TRAINING1_PARACHUTETRAINING_DAY","MRH_TRAINING1_PARACHUTETRAINING_NIGHT"};
deFaultResetTime[] = {2019,03,21,08,00}; //when a mission is finished server will reset at this date;
deFaultResetWeather[] = {0,0,0,0,0}; // when a mission is finished weather params will be set at these
		
		class TestMission
		{
			Displayname = "Mission test";
			MissionComp = "test";
			MissionTimeAndDate[] = {1982,03,21,23,30};
			RecommendedPlayersNumber = 1;
			MissionSummary = "Cette mission est une <t color='#d68242'> mission de test </t>. Dans cette mission vous devez tuer des gens parce que blahblahblah blah blah blah";
			MissionBriefing = "Tuez le gars blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah";
			AdditionalInfos = "Cette mission requiert d'avoir un chibre énorme";
			ExtraInitScripts = SCRIPTPATH(testscript.sqf);
		    AdditionalPics[] = {{PICPATH(MRHTest1.jpg),"Imagetest"},{PICPATH(MRHTest2.jpg),"imagetest2"}};
			CurrentMissionVar = "MissionTest";
			MissionMaker = "Mr H.";
			MissionMakerPic = PICPATH(MMTagMRH.paa);
			WeatherConditions[] = {1,1,1,1,1}; // valeur entre 0 = pas de 1= à fond de {1pluie, 2brouillard, 3vagues, 4éclairs, 5couverture nuageuses}
			IndeAllegiance = 1; //statut des independants 0 = ennemis de tt le monde, 1 = neutres , 2 = alliés aux blufor 3 = alliés aux opfor
		}
		
		class TestMission2
		{
			Displayname = "Mission test 2";
			MissionComp = "test";
			MissionTimeAndDate[] = {1982,03,21,10,30};
			RecommendedPlayersNumber = 1;
			MissionSummary = "Cette mission est une mission de test. Dans cette mission vous devez tuer des gens parce que blahblahblah blah blah blah";
			MissionBriefing = "Tuez le gars blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah";
			AdditionalInfos = "Cette mission requiert d'avoir un chibre énorme";
			ExtraInitScripts = "none";
		    AdditionalPics[] = {{PICPATH(MRHTest1.jpg),"Imagetest"},{PICPATH(MRHTest2.jpg),"imagetest2"}};
			CurrentMissionVar = "MissionTest";
			MissionMaker = "Mr H.";
			MissionMakerPic = PICPATH(MMTagMRH.paa);
			WeatherConditions[] = {0,1,0,0,0}; // valeur entre 0 = pas de 1= à fond de {1pluie, 2brouillard, 3vagues, 4éclairs, 5couverture nuageuses}
			IndeAllegiance = 1; //statut des independants 0 = ennemis de tt le monde, 1 = neutres , 2 = alliés aux blufor 3 = alliés aux opfor
		}
		
		class TestMission3
		{
			Displayname = "Mission test encore";
			MissionComp = "test";
			MissionTimeAndDate[] = {1982,03,21,7,30};
			RecommendedPlayersNumber = 1;
			MissionSummary = "Cette mission est une mission de test. Dans cette mission vous devez tuer des gens parce que blahblahblah blah blah blah";
			MissionBriefing = "Tuez le gars blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blahblahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah blahblahblah blah blah blah";
			AdditionalInfos = "Cette mission requiert d'avoir un chibre énorme";
			ExtraInitScripts = SCRIPTPATH(testscript.sqf);
		    AdditionalPics[] = {{PICPATH(MRHTest1.jpg),"Imagetest"},{PICPATH(MRHTest2.jpg),"imagetest2"}};
			CurrentMissionVar = "MissionTest";
			MissionMaker = "Mr H.";
			MissionMakerPic = PICPATH(MMTagMRH.paa);
			WeatherConditions[] = {0,0,0,0,0}; // valeur entre 0 = pas de 1= à fond de {1pluie, 2brouillard, 3vagues, 4éclairs, 5couverture nuageuses}
			IndeAllegiance = 1; //statut des independants 0 = ennemis de tt le monde, 1 = neutres , 2 = alliés aux blufor 3 = alliés aux opfor
		}
		
		class MRH_M1_OPRussiaWithLove
		{
			Displayname = "Operation Russian";
			MissionComp = "MRH_M1";
			MissionTimeAndDate[] = {2019,03,21,6,30};
			RecommendedPlayersNumber = 1;
			MissionSummary = "Les forces Russes débarquent en petit nombre pour effectuer une reconnaissance, un sniper doit éliminer leur officier.";
			MissionBriefing = "A remplir";
			AdditionalInfos = "Cette mission requiert de préférence un tireur d'élite.";
			ExtraInitScripts = SCRIPTPATH(MRH_M1_Init.sqf);
		    AdditionalPics[] = {{PICPATH(MRH_M1_SatView.jpg),"Vue satellite de la zone"},{PICPATH(MRH_M1_Map.jpg),"Carte de la zone"},{PICPATH(MRH_M1_Target.jpg),"photo de la cible"}};
			CurrentMissionVar = "MRH_M1_RussianLove";
			MissionMaker = "Mr H.";
			MissionMakerPic = PICPATH(MMTagMRH.paa);
			WeatherConditions[] = {0,0.1,0,0,0}; // valeur entre 0 = pas de 1= à fond de {1pluie, 2brouillard, 3vagues, 4éclairs, 5couverture nuageuses}
			IndeAllegiance = 2; //statut des independants 0 = ennemis de tt le monde, 1 = neutres , 2 = alliés aux blufor 3 = alliés aux opfor
		}
		class MRH_TRAINING1_PARACHUTETRAINING_DAY
		{
			Displayname = "Entraînement parachute de jour";
			MissionComp = "MRH_TRAINING1_PARACHUTE_DAY_CMP";
			MissionTimeAndDate[] = {2019,03,21,10,00};
			RecommendedPlayersNumber = 1; 
			MissionSummary = "Cette mission est une mission d'entraînement au saut en parachute de jour.";
			MissionBriefing = "Pour réussir cet entraînement vous devez accomplir trois sauts en parachute et atterrir sur la cible qui se trouve à côté des hélipads de la base. La cible sera marquée par un fumigène vert au moment du saut. Pour commencer la mission, rendez-vous en haut de la piste d'atterissage et munissez-vous d'un parachute dans la caisse, pénétrez dans la zone marquée par des plots rouges pour commencer le saut. Recommencez trois fois pour réussir cette mission."; 
			AdditionalInfos = "Cette mission ne requiert pas de matériel particulier, un parachute vous sera fourni. Mission de jour et par temps clair."; 
			ExtraInitScripts = SCRIPTPATH(MRH_TRAINING1_InitScript.sqf); 
		    AdditionalPics[] = {{PICPATH(MRH_TRAINING1_Visual.jpg),"Visuel de la mission."},{PICPATH(MRH_TRAINING1_JumpTarget.jpg),"La cible à atteindre."},{PICPATH(MRH_TRAINING1_Box.jpg),"La zone de départ en haut de la piste"}}; 
			CurrentMissionVar = "MRH_TRAINING1_PARATRAININGDAY";
			MissionMaker = "Mr H."; 
			MissionMakerPic = PICPATH(MMTagMRH.paa); 
			WeatherConditions[] = {0,0,0,0,0.2}; 
			IndeAllegiance = 1; 
		}
		
		class MRH_TRAINING1_PARACHUTETRAINING_NIGHT
		{
			Displayname = "Entraînement parachute de nuit";
			MissionComp = "MRH_TRAINING1_PARACHUTE_NIGHT_CMP";
			MissionTimeAndDate[] = {2019,03,21,23,50};
			RecommendedPlayersNumber = 1; 
			MissionSummary = "Cette mission est une mission d'entraînement au saut en parachute de nuit.";
			MissionBriefing = "Pour réussir cet entraînement vous devez accomplir trois sauts en parachute et atterrir sur la cible qui se trouve à côté des hélipads de la base. La cible sera marquée par un flare vert au moment du saut. Pour commencer la mission, rendez-vous en haut de la piste d'atterissage et munissez-vous d'un parachute dans la caisse, pénétrez dans la zone marquée par des plots rouges pour commencer le saut. Recommencez trois fois pour réussir cette mission."; 
			AdditionalInfos = "Un parachute vous sera fourni. Mission de nuit, équipez-vous d'un loadout comprenant des LVN, temps orageux."; 
			ExtraInitScripts = SCRIPTPATH(MRH_TRAINING1_InitScript.sqf); 
		    AdditionalPics[] = {{PICPATH(MRH_TRAINING1_Visual.jpg),"Visuel de la mission."},{PICPATH(MRH_TRAINING1_JumpTarget.jpg),"La cible à atteindre."},{PICPATH(MRH_TRAINING1_Box.jpg),"La zone de départ en haut de la piste"}}; 
			CurrentMissionVar = "MRH_TRAINING1_PARATRAININGDAY";
			MissionMaker = "Mr H."; 
			MissionMakerPic = PICPATH(MMTagMRH.paa); 
			WeatherConditions[] = {0.8,0,0,1,1}; 
			IndeAllegiance = 1; 
		}
		
};