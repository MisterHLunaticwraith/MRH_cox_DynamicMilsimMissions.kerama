#define ROOTPATH "MRHLoadOutAndClassSelector
#define PICTUREPATH(ARG) ROOTPATH\paa\classes\##ARG"
class cfgMRHUnitClasses
{
allUnitClasses[]= {"trooper","medic","doctor","engineerLVL1","engineerLVL2","EOD","UAVoperator","MachineGunner","RadioOperator","SquadLeader","TeamLeader","HeliPilot","JetPilot","MarksMan","Sniper","ciaLiaison","paraTrooper","Gunner","tankCrew","RankedOfficer"};	
    
	class something 
	{
		DisplayName = "";
		isAceMedic =; //0 not a medic 1 medic 2 doctor
		isAceEngineer =;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =;//0 =false 1 = true
		isExplosiveSpecialist =;//0 =false 1 = true
		RequiredRank =; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(undefined.paa);
		
		
	}
		class trooper 
	{
		DisplayName = "Soldat";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank = "NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Troopers" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =15; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(trooper.paa);
		
		
	}
	class medic 
	{
		DisplayName = "Auxiliaire 1ers soins";
		isAceMedic =1; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Medics" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =6; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(medic.paa);
		
	}
	class doctor
	{
		DisplayName = "Auxiliaire Sanitaire";
		isAceMedic =2; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Doctors" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =3; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(medic.paa);
		
	}
	class engineerLVL1
	{
		DisplayName = "Technicien";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =1;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_EngineerLVL1" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =3; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(tech.paa);
		
	}
	class engineerLVL2
	{
		DisplayName = "Ingénieur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =2;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_EngineerLVL2" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =3; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(tech.paa);
		
	}
	
	class EOD
	{
		DisplayName = "Spécialiste en explosifs";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =2;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =1;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_EODs" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =2; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(EOD.paa);
		
	}
	
	class UAVoperator
	{
		DisplayName = "Opérateur Drone";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =1;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =1;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_UAVHackers" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =2; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(UAV.paa);
		
	}
	
	class MachineGunner
	{
		DisplayName = "Mitrailleur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_MachineGunner" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =6; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(machinegunner.paa);
		
	}
	
	class RadioOperator
	{
		DisplayName = "Opérateur Radio";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_RadioOPs" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =7; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(radio.paa);
		
	}
	
	class SquadLeader
	{
		DisplayName = "Chef de groupe";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="SERGEANT"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_SquadLeaders" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =5; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(officer.paa);
		
	}
	class TeamLeader
	{
		DisplayName = "Chef d'équipe";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="CORPORAL"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_TeamLeaders" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =10; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(officer.paa);
		
	}
		class RankedOfficer
	{
		DisplayName = "Colonel";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="COLONEL"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_RankedOfficers" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =1; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(officer.paa);
		
	}
	class HeliPilot
	{
		DisplayName = "Pilote hélicoptère";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =1;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="CAPTAIN"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_HeliPilots" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =3; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(helipilot.paa);
		
	}
	class JetPilot
	{
		DisplayName = "Pilote de chasseur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =1;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="CAPTAIN"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_JetPilots" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =1; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(jetpilot.paa);
		
	}
	class MarksMan
	{
		DisplayName = "Tireur de précision";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_MarksMen" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =3; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(sniper.paa);
		
	}
	class Sniper
	{
		DisplayName = "Franc-tireur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="CAPTAIN"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Snipers" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =1; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(sniper.paa);
		
	}
		class Spotter
	{
		DisplayName = "Spoteur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Spotters" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =1; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(sniper.paa);
		
	}
		class ciaLiaison
	{
		DisplayName = "Officier de liaison CIA";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="MAJOR"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_CIAops" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =2; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(cialiaison.paa);
		
	}
			class paraTrooper
	{
		DisplayName = "Parachutiste";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_paraTroopers" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =15; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(paratrooper.paa);
		
	}
			class Gunner
	{
		DisplayName = "Artilleur";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_Gunners" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =4; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(arty.paa);
		
	}
			class tankCrew
	{
		DisplayName = "Cavalier blindé";
		isAceMedic =0; //0 not a medic 1 medic 2 doctor
		isAceEngineer =0;//0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
		isUavHacker =0;//0 =false 1 = true
		isExplosiveSpecialist =0;//0 =false 1 = true
		RequiredRank ="NONE"; //"NONE", "PRIVATE", "CORPORAL" etc
		MaxAllowedNumberStringName = "MRH_MaxAllowed_tankCrews" //eg MRH_MaxAllowed_
		DefaultMaxAllowedNumber =6; //Integer will set CBA default Value
		displayPicture = PICTUREPATH(tank.paa);
		
	}
};