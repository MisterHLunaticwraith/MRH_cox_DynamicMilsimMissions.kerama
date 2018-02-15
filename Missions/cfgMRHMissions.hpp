#define ROOTPATH "Missions
#define PICPATH(ARG) ROOTPATH\Images\##ARG"
#define SCRIPTPATH(ARG) ROOTPATH\Scripts\##ARG"
//PICTUREPATH(trooper.paa)
//setDate [year, month, day, hour, minute] 
class CfgMRHMissions
{
allTGVMissions[]= {"MRH_TRAINING1_PARACHUTETRAINING_DAY","MRH_TRAINING1_PARACHUTETRAINING_NIGHT","MRH_M1_OPREALPOLITIK"};
deFaultResetTime[] = {2019,03,21,08,00}; //when a mission is finished server will reset at this date;
deFaultResetWeather[] = {0,0,0,0,0}; // when a mission is finished weather params will be set at these
		

		

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
		

						class MRH_M1_OPREALPOLITIK
		{
			Displayname = "Opération Realpolitik";
			MissionComp = "MRH_M1_OPREALPOLITIK_CMP";
			MissionTimeAndDate[] = {2019,03,22,16,00};
			RecommendedPlayersNumber = 3; 
			MissionSummary = "Une rencontre va avoir lieu entre un officier russe et un représentant de la KIM (Kerama Independency Militia) dans le but de forger une alliance entre les deux camps. Une telle alliance bouleverserait l'équilibre des forces en place et est inacceptable vous devez l'empêcher de se conclure. ";
			MissionBriefing = "Hier, à H2130 un de nos contacts infiltré au sein de la KIM (Kerama Independency Militia) nous a fait remonter une information de première importance: les russes négocient avec la KIM pour établir une alliance durable contre nous. Une telle alliance serait désastreuse pour notre position géostratégique dans la région. Heureusement notre contact a aussi pu nous faire parvenir des informations concernant le lieu et la date de cette rencontre. Ne ne pouvons pas intervenir en force sur place mais l'envoi d'un sniper a reçu le feu vert du commandement. <br/><br/>INTEL:<br/> Nous savons que les russes ont établi sur les hauteurs un petit QG mobile afin de protéger leur opération. Ce QG est faiblement défendu, probablement parce que l'ennemi cherche à maintenir une certaine discrétion pour son opération, mais sa position sur les hauteurs risque de perturber l'opération.<br/> Le meeting aura lieu dans la cour d'une vieille usine désaffectée un peu plus bas. Les russes sont déjà sur place et devraient être rejoints par un officer de la KIM par voie routière.<br/><br/>MISSION:<br/>Votre mission doit se dérouler de la manière la plus discrète possible c'est pourquoi nous recommandons de n'envoyer sur place qu'une équipe de tireurs d'élite et d'opérer au maximum à grande distance.<br/> Votre équipe devra d'abord sécuriser ses arrières en nettoyant la faible force présente sur le QG mobile russe.<br/> Une fois cette étape réussie choissisez une position qui vous donnera un avantage stratégique et préparez votre tir, mais n'engagez pas tant que le représentant de la KIM n'a pas pris contact avec l'officier russe, nous ne voulons pas le faire fuir! Vos seuls cibles impératives sont l'officier russe et l'officier de la milice, les autres cibles ne sont pas prioritaires. Ils doivent être impérativement abattus pour que votre mission soit réussie, prenez garde à n'engager que lorsque votre tir est optimal mais ne laissez pas non plus à l'ennemi l'opportunité de quitter la zone. Une fois vos cibles éliminées vous pouvez désengager."; 
			AdditionalInfos = "Cette mission est pensée pour être effectuée par une équipe sniper /spotter"; 
			ExtraInitScripts = "none"; 
		    AdditionalPics[] = {{PICPATH(MRH_M1_TitleText.jpg),"Opération Realpolitik"},{PICPATH(MRH_M1_MilitiaTarget.jpg),"Cible n°1: l'officier de la KIM"},{PICPATH(MRH_M1_RussianOfficer.jpg),"Cible n°2: l'officer russe"},{PICPATH(MRH_M1_RussianHQ.jpg),"Un QG mobile russe standard."},{PICPATH(MRH_M1_Satview.jpg),"Analyse satellite de la zone."},{PICPATH(MRH_M1_StrategicMap.jpg),"Carte stratégique"}}; 
			CurrentMissionVar = "MRH_M1_OPREALPOLITIK_VAR";
			MissionMaker = "Mr H."; 
			MissionMakerPic = PICPATH(MMTagMRH.paa); 
			WeatherConditions[] = {0,0,0,0,0.2}; 
			IndeAllegiance = 3; 
		}
		
};