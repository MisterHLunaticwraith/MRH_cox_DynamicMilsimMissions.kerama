//RequiredRanks can be {"none"} OR an ARRAY including: {"PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL" } BE CARFEFUL RequiredClasses are case sensitive
class CfgMRHloadouts
{
allLoadOuts[]= {"AtEase","SpecOpsSL","SpecOpsEOD","SpecOpsMedic","SpecOpsGR","SpecOpsTL","SpecOpsDoctor","SpecOpsMG","SpecOpsPrivate","SpecOpsUAVOperator","SpecOpsRadioOP","JetPilotLoad","heliPilotload","flightCrewLoad","CIAop","trooperLoadOut","infantryMedic","infantryDoctor","engineerLVL1load","engineerLVL2load","EODload","EODSpecialload","UAVopload","MGLoadout","RadioOpLoadout","TeamLeadLoad","MarksManLoad","SpoterLoad","SniperLoad","OfficerLoad","SquadLeadLoad"};
		class AtEase
		{
			Displayname = "En permission";
			RequiredRanks[] = {"none"};
			RequiredClasses[] = {"none"};
			RequiresSpecOps = 0;
		    Loadout[] = {{},{},{},{"rhs_uniform_cu_ucp",{}},{},{},"rhsusf_patrolcap_ucp","",{},{"ItemMap","","","","",""}};
		}
		
		class SpecOpsSL  
		 { 
		 Displayname = "Chef de Groupe SEALS" ; 
		 RequiredRanks[]= {"LIEUTENANT"} ; 
		 RequiredClasses[] = {"SquadLeader"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_mk18_grip_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3_tan"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Squadleader",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",6,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1}}},{},"rhsusf_opscore_aor1_pelt_nsw","G_Aviator",{},{"ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsEOD 
		 { 
		 Displayname = "GV Démineur SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"EOD"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhsusf_weap_MP7A2_aor1_grip3","rhsusf_acc_rotex_mp7_aor1","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhsusf_mag_40Rnd_46x30_FMJ",40},{},"rhsusf_acc_grip3"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"ItemcTabHCam",1}}},{"rhsusf_iotv_ocp_Teamleader",{{"rhsusf_mag_17Rnd_9x19_JHP",6,17},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1},{"rhsusf_mag_40Rnd_46x30_FMJ",3,40}}},{"rhsusf_falconii_mc",{{"ACE_EntrenchingTool",1},{"ACE_wirecutter",1},{"ACE_SpraypaintRed",1},{"ACE_DefusalKit",1}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsMedic 
		 { 
		 Displayname = "GV 1ers soins" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"medic"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_hk416d10_LMT_d_grip3","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Medic",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",5,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",2,1},{"rhs_mag_mk84",1,1}}},{"rhsusf_falconii_mc",{{"ACE_fieldDressing",10},{"ACE_elasticBandage",10},{"ACE_quikclot",10},{"ACE_epinephrine",5},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_surgicalKit",1},{"ACE_tourniquet",5},{"ACE_salineIV_250",4},{"rhs_mag_an_m8hc",8,1},{"rhs_mag_30Rnd_556x45_M855_Stanag",1,30}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsGR 
		 { 
		 Displayname = "GV Grenadier SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"none"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_hk416d10_LMT_d_grip3","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3"},{},{"rhs_weap_M320","","","",{"rhs_mag_M441_HE",1},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_Flashlight_MX991",1},{"ItemcTabHCam",1}}},{"rhsusf_iotv_ocp_Grenadier",{{"rhs_mag_30Rnd_556x45_M855_Stanag",6,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",1,1},{"rhs_mag_M441_HE",3,1}}},{"rhsusf_falconii_mc",{{"1Rnd_HE_Grenade_shell",10,1},{"1Rnd_Smoke_Grenade_shell",4,1},{"1Rnd_SmokeRed_Grenade_shell",4,1},{"1Rnd_SmokeGreen_Grenade_shell",4,1},{"rhs_mag_30Rnd_556x45_M855_Stanag",1,30}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsTL  
		 { 
		 Displayname = "Chef d'équipe SEALS" ; 
		 RequiredRanks[]= {"CORPORAL"} ; 
		 RequiredClasses[] = {"TeamLeader"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_mk18_grip_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip1"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_Flashlight_MX991",1},{"ACE_MapTools",1},{"ACE_microDAGR",1}}},{"rhsusf_iotv_ocp_Teamleader",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",5,30},{"rhs_mag_an_m8hc",3,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1}}},{},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsDoctor 
		 { 
		 Displayname = "GV AuxSan SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"doctor"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhsusf_weap_MP7A2_aor1_grip1","rhsusf_acc_rotex_mp7_aor1","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhsusf_mag_40Rnd_46x30_FMJ",40},{},"rhsusf_acc_grip1"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_Flashlight_MX991",1},{"ItemcTabHCam",1}}},{"rhsusf_iotv_ocp_Medic",{{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhsusf_mag_40Rnd_46x30_JHP",6,40},{"rhs_mag_an_m8hc",4,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"adv_aceCPR_AED",1},{"ACE_surgicalKit",1},{"ACE_salineIV",4},{"ACE_fieldDressing",15},{"ACE_elasticBandage",15},{"ACE_quikclot",15},{"ACE_morphine",10},{"ACE_packingBandage",10},{"ACE_tourniquet",5},{"ACE_epinephrine",5}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsMG  
		 { 
		 Displayname = "GV Mitrailleur SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"MachineGunner"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_m249_pip_S_para","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15side","rhsusf_acc_g33_xps3_tan",{"rhs_200rnd_556x45_M_SAW",200},{},""},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_Flashlight_MX991",1},{"ItemcTabHCam",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_mk84",2,1},{"rhs_mag_m67",4,1},{"rhs_200rnd_556x45_M_SAW",1,200}}},{"rhsusf_falconii_mc",{{"rhs_mag_an_m8hc",2,1},{"rhs_200rnd_556x45_M_SAW",2,200}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","ItemRadio","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsPrivate  
		 { 
		 Displayname = "Opérateur SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"none"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_mk18_grip_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3_tan"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",5,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1}}},{},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsUAVOperator 
		 { 
		 Displayname = "Opérateur Drone SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"UAVoperator"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_mk18_grip_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3_tan"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",5,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1}}},{"B_rhsusf_B_BACKPACK",{}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		class SpecOpsRadioOP 
		 { 
		 Displayname = "Opérateur Radio SEALS" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"RadioOperator"} ; 
		 RequiresSpecOps = 1 ; 
		 Loadout[] = {{"rhs_weap_mk18_grip_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_g33_xps3_tan",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},"rhsusf_acc_grip3_tan"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_elasticBandage",5},{"ACE_fieldDressing",5},{"ACE_quikclot",5},{"ACE_CableTie",2},{"ACE_packingBandage",5},{"ACE_morphine",5},{"ACE_salineIV_250",1},{"ACE_tourniquet",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"ItemcTabHCam",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhs_mag_30Rnd_556x45_M855_Stanag",5,30},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m67",4,1},{"rhs_mag_mk84",2,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ACRE_PRC117F",1},{"rhs_mag_30Rnd_556x45_M855_Stanag",1,30}}},"rhsusf_opscore_aor1_pelt_nsw","rhsusf_shemagh2_gogg_tan",{},{"ItemMap","","","ItemCompass","ACE_Altimeter","A3_GPNVG18b_F"}} ; 
		 }
		 
		class JetPilotLoad 
		 { 
		 Displayname = "Pilote de chasse" ; 
		 RequiredRanks[]= {"CAPTAIN"} ; 
		 RequiredClasses[] = {"JetPilot"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"U_B_HeliPilotCoveralls",{{"ACE_EarPlugs",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15}}},{},{"rhsusf_assault_eagleaiii_ucp",{{"ACRE_PRC117F",1}}},"RHS_jetpilot_usaf","G_Aviator",{},{"ItemMap","ItemAndroid","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"}} ; 
		 }
		class heliPilotload 
		 { 
		 Displayname = "Pilote helicoptere" ; 
		 RequiredRanks[]= {"CAPTAIN"} ; 
		 RequiredClasses[] = {"HeliPilot"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_m4_carryhandle","","","",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"rhsusf_patrolcap_ocp",1},{"ACE_EarPlugs",1},{"ACE_fieldDressing",1},{"ACE_packingBandage",1},{"ACE_morphine",1},{"ACE_tourniquet",1}}},{"rhsusf_spcs_ocp",{{"ACE_MapTools",1},{"ACE_microDAGR",1},{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",3,15},{"rhs_mag_an_m8hc",1,1},{"rhs_mag_m18_red",1,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ACRE_PRC117F",1}}},"rhsusf_hgu56p_visor_green","rhs_googles_black",{"Binocular","","","",{},{},""},{"ItemMap","ItemAndroid","ItemRadio","ItemCompass","ItemWatch","rhsusf_ANPVS_15"}} ; 
		 }
		class flightCrewLoad  
		 { 
		 Displayname = "Equipage helicoptere" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"engineerLVL1"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_m4_carryhandle","","","",{"rhs_mag_30Rnd_556x45_M855_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_fieldDressing",1},{"ACE_packingBandage",1},{"ACE_morphine",1},{"ACE_tourniquet",1}}},{"rhsusf_spcs_ocp",{{"rhsusf_mag_15Rnd_9x19_FMJ",3,15},{"rhs_mag_an_m8hc",1,1},{"rhs_mag_m18_red",1,1}}},{"rhsusf_assault_eagleaiii_ocp",{}},"rhsusf_hgu56p_visor_mask_black","rhs_googles_clear",{"Binocular","","","",{},{},""},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_15"}} ; 
		 }
		class CIAop 
		 { 
		 Displayname = "Agent de la CIA" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"ciaLiaison"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhsusf_weap_MP7A2","rhsusf_acc_rotex_mp7","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_T1_low",{"rhsusf_mag_40Rnd_46x30_JHP",40},{},"rhsusf_acc_grip3"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"LOP_U_CHR_Functionary_01",{{"ACE_microDAGR",1},{"ACE_MapTools",1},{"ACE_Flashlight_MX991",1},{"ACE_quikclot",5},{"ACE_morphine",2},{"ACE_tourniquet",1},{"ACE_elasticBandage",3},{"ACE_packingBandage",4},{"ACE_fieldDressing",4},{"ACE_EarPlugs",1},{"rhs_mag_an_m8hc",2,1}}},{"LOP_V_CarrierRig_BLK",{{"rhs_mag_m7a3_cs",1,1},{"rhsusf_mag_40Rnd_46x30_JHP",6,40},{"rhsusf_mag_17Rnd_9x19_JHP",3,17}}},{},"rhsusf_Bowman","",{"Binocular","","","",{},{},""},{"ItemMap","ItemcTab","","","",""}} ; 
		 }
		class trooperLoadOut 
		 { 
		 Displayname = "Soldat" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"none"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4a1_compm4","","rhsusf_acc_anpeq15_top","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_fieldDressing",4},{"ACE_elasticBandage",4},{"ACE_quikclot",4},{"ACE_packingBandage",4},{"ACE_morphine",1},{"ACE_Flashlight_MX991",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m67",2,1}}},{},"rhsusf_ach_helmet_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class infantryMedic 
		 { 
		 Displayname = "Auxiliaire 1ers soins" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"medic"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Medic",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"rhs_medic_bag",{{"ACE_surgicalKit",1},{"ACE_fieldDressing",15},{"ACE_packingBandage",15},{"ACE_elasticBandage",15},{"ACE_tourniquet",5},{"ACE_morphine",10},{"ACE_epinephrine",5},{"ACE_quikclot",8},{"ACE_salineIV_250",3}}},"rhsusf_ach_helmet_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class infantryDoctor 
		 { 
		 Displayname = "AuxSan" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"doctor"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Medic",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ACE_surgicalKit",1},{"ACE_fieldDressing",15},{"ACE_packingBandage",15},{"ACE_elasticBandage",15},{"ACE_tourniquet",5},{"ACE_morphine",10},{"ACE_epinephrine",5},{"ACE_quikclot",8},{"ACE_salineIV_250",3},{"adv_aceCPR_AED",1},{"ACE_salineIV",3}}},"rhsusf_ach_helmet_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class engineerLVL1load 
		 { 
		 Displayname = "Technicien" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"engineerLVL1"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Repair",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ToolKit",1},{"ACE_wirecutter",1},{"ACE_EntrenchingTool",1},{"ACE_SpraypaintRed",1}}},"rhsusf_ach_helmet_ESS_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class engineerLVL2load 
		 { 
		 Displayname = "Ingénieur" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"engineerLVL2"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhs_weap_M320","","","",{"ACE_HuntIR_M203",1},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Repair",{{"ACE_DefusalKit",1},{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ToolKit",1},{"ACE_wirecutter",1},{"ACE_EntrenchingTool",1},{"ACE_SpraypaintRed",1},{"ACE_HuntIR_monitor",1},{"ACE_HuntIR_M203",3,1}}},"rhsusf_ach_helmet_headset_ess_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class EODload 
		 { 
		 Displayname = "EOD" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"EOD"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"ACE_VMM3","","","",{},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Repair",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"ACE_wirecutter",1},{"ACE_EntrenchingTool",1},{"ACE_SpraypaintRed",1},{"ACE_DefusalKit",1},{"ACE_M26_Clacker",1},{"DemoCharge_Remote_Mag",3,1},{"ClaymoreDirectionalMine_Remote_Mag",1,1},{"APERSBoundingMine_Range_Mag",1,1},{"rhsusf_mine_m14_mag",1,1}}},"rhsusf_ach_helmet_ESS_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class UAVopload 
		 { 
		 Displayname = "Opérateur Drone" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"UAVoperator"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Repair",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"B_rhsusf_B_BACKPACK",{}},"rhsusf_ach_helmet_ESS_ocp","rhs_ess_black",{"Binocular","","","",{},{},""},{"ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class MGLoadout 
		 { 
		 Displayname = "Mitrailleur" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"MachineGunner"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_m240b_elcan","","","rhsusf_acc_ELCAN",{"rhsusf_50Rnd_762x51",50},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_tourniquet",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_morphine",1},{"ACE_packingBandage",5}}},{"rhsusf_iotv_ocp_SAW",{{"rhsusf_50Rnd_762x51",5,50},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m67",1,1}}},{"rhsusf_assault_eagleaiii_ocp_mg",{{"rhsusf_50Rnd_762x51",6,50}}},"rhsusf_ach_helmet_ocp","rhs_ess_black",{},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class RadioOpLoadout 
		 { 
		 Displayname = "Opérateur Radio" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"RadioOperator"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1},{"ACE_microDAGR",1},{"ACE_MapTools",1}}},{"rhsusf_iotv_ocp_Teamleader",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",1,1},{"rhs_mag_an_m8hc",4,1}}},{"tfw_ilbe_a_coy",{{"ACRE_PRC117F",1}}},"rhsusf_ach_helmet_ESS_ocp","rhs_ess_black",{"Binocular","","","",{},{},""},{"ItemMap","","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		class TeamLeadLoad 
		 { 
		 Displayname = "Chef d'équipe" ; 
		 RequiredRanks[]= {"CORPORAL"} ; 
		 RequiredClasses[] = {"TeamLeader"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_EarPlugs",1},{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Squadleader",{{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACRE_PRC152",1},{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",2,1},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m18_green",2,1}}},{},"rhsusf_ach_helmet_ESS_ocp","rhs_ess_black",{"Binocular","","","",{},{},""},{"ItemMap","ItemAndroid","","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		 
		 class SquadLeadLoad 
		 { 
		 Displayname = "Chef de groupe" ; 
		 RequiredRanks[]= {"SERGEANT"} ; 
		 RequiredClasses[] = {"SquadLeader"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4_compm4","","rhsusf_acc_M952V","rhsusf_acc_compm4",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_Flashlight_MX991",1},{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_tourniquet",1},{"ACE_morphine",1}}},{"rhsusf_iotv_ocp_Squadleader",{{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACRE_PRC152_ID_1",1},{"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30},{"rhsusf_mag_15Rnd_9x19_FMJ",2,15},{"rhs_mag_m18_red",2,1},{"rhs_mag_an_m8hc",2,1},{"rhs_mag_m18_green",2,1}}},{"rhsusf_assault_eagleaiii_ocp",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",10,30},{"rhsusf_50Rnd_762x51",2,50}}},"rhsusf_ach_helmet_ESS_ocp","G_Aviator",{"Binocular","","","",{},{},""},{"ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","rhsusf_ANPVS_14"}} ; 
		 }
		 
		class OfficerLoad 
		 { 
		 Displayname = "Colonel" ; 
		 RequiredRanks[]= {"COLONEL"} ; 
		 RequiredClasses[] = {"RankedOfficer"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_m4a1_acog2","","rhsusf_acc_anpeq15_top","rhsusf_acc_ACOG2",{"rhs_mag_30Rnd_556x45_M855A1_Stanag",30},{},""},{},{"rhsusf_weap_m9","","","",{"rhsusf_mag_15Rnd_9x19_FMJ",15},{},""},{"rhs_uniform_cu_ocp",{{"ACE_microDAGR",1},{"ACE_Flashlight_XL50",1},{"ACE_MapTools",1},{"ACE_fieldDressing",5},{"ACE_packingBandage",5},{"ACE_elasticBandage",5},{"ACE_tourniquet",1},{"ACE_morphine",1},{"ACE_quikclot",5}}},{"rhsusf_iotv_ocp_Teamleader",{{"rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30}}},{"tfw_ilbe_coy",{{"ACE_HuntIR_monitor",1},{"ACRE_PRC117F_ID_1",1}}},"rhsusf_patrolcap_ocp","G_Aviator",{"Binocular","","","",{},{},""},{"ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter",""}} ; 
		}
	
		class EODSpecialload 
		 { 
		 Displayname = "EOD Démineur" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"EOD"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{},{},{"ACE_VMM3","","","",{},{},""},{"EOD_Uniform",{{"ItemcTabHCam",1},{"ACE_fieldDressing",5}}},{"EOD_SUIT_vest",{{"ACE_EarPlugs",1},{"ACE_DefusalKit",1},{"ACE_wirecutter",1},{"ACE_Flashlight_XL50",1},{"ACE_tourniquet",1}}},{"B_FieldPack_oli",{{"ACE_SpraypaintBlack",1},{"ACE_SpraypaintBlue",1},{"ACE_SpraypaintGreen",1},{"ACE_SpraypaintRed",1},{"ACE_EntrenchingTool",1},{"ACE_M26_Clacker",1},{"ACE_Clacker",1},{"DemoCharge_Remote_Mag",5,1}}},"EOD9_HELMET","",{},{"ItemMap","","","ItemCompass","ItemWatch",""}} ; 
		 }
		class MarksManLoad 
		 { 
		 Displayname = "Tireur de précision" ; 
		 RequiredRanks[]= {"none"} ; 
		 RequiredClasses[] = {"MarksMan"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_m14ebrri_leu","","ACE_acc_pointer_green","rhsusf_acc_LEUPOLDMK4",{"rhsusf_20Rnd_762x51_m118_special_Mag",20},{},"rhsusf_acc_harris_bipod"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"rhs_uniform_cu_ocp",{{"ACE_fieldDressing",5},{"ACE_elasticBandage",5},{"ACE_quikclot",5},{"ACE_EarPlugs",1},{"ACE_morphine",1},{"ACE_tourniquet",1}}},{"rhsusf_iotv_ocp_Rifleman",{{"ACE_RangeCard",1},{"ACE_Flashlight_MX991",1},{"ACE_Kestrel4500",1},{"ACE_ATragMX",1},{"rhsusf_20Rnd_762x51_m118_special_Mag",7,20},{"rhsusf_mag_17Rnd_9x19_JHP",1,17},{"rhs_mag_an_m8hc",1,1}}},{},"rhsusf_ach_helmet_ocp","rhs_googles_clear",{"lerca_1200_black","","","",{},{},""},{"ItemMap","","","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"}} ; 
		 }
		class SpoterLoad 
		 { 
		 Displayname = "Spoteur" ; 
		 RequiredRanks[]= {"CORPORAL"} ; 
		 RequiredClasses[] = {"Spotter"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_XM2010","rhsusf_acc_M2010S_wd","rhsusf_acc_anpeq15A","rhsusf_acc_M8541",{"rhsusf_5Rnd_300winmag_xm2010",5},{},"rhsusf_acc_harris_bipod"},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"U_B_FullGhillie_ard",{{"rhsusf_acc_premier_anpvs27",1},{"ACE_EarPlugs",1},{"ACE_RangeCard",1},{"ACE_Kestrel4500",1},{"ACE_ATragMX",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"ACE_quikclot",5},{"ACE_fieldDressing",5},{"ACE_packingBandage",5},{"ACE_elasticBandage",5},{"ACE_morphine",1},{"ACE_tourniquet",1}}},{"rhsusf_iotv_ocp_Teamleader",{{"ACE_SpottingScope",1},{"ACE_Tripod",1},{"rhsusf_5Rnd_300winmag_xm2010",14,5},{"rhsusf_mag_17Rnd_9x19_JHP",8,17}}},{"tfw_ilbe_dd_gr",{{"ACRE_PRC117F",1}}},"rhsusf_ach_helmet_camo_ocp","rhs_ess_black",{"lerca_1200_black","","","",{},{},""},{"ItemMap","ItemAndroid","ItemRadio","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"}} ; 
		 }
		class SniperLoad 
		 { 
		 Displayname = "Franc tireur" ; 
		 RequiredRanks[]= {"CAPTAIN"} ; 
		 RequiredClasses[] = {"Sniper"} ; 
		 RequiresSpecOps = 0 ; 
		 Loadout[] = {{"rhs_weap_M107","","","rhsusf_acc_M8541",{"rhsusf_mag_10Rnd_STD_50BMG_M33",10},{},""},{},{"rhsusf_weap_glock17g4","rhsusf_acc_omega9k","","",{"rhsusf_mag_17Rnd_9x19_JHP",17},{},""},{"U_B_FullGhillie_ard",{{"rhsusf_acc_premier_anpvs27",1},{"ACE_RangeCard",1},{"ACE_Kestrel4500",1},{"ACE_ATragMX",1},{"ACE_MapTools",1},{"ACE_microDAGR",1},{"ACE_Flashlight_MX991",1},{"ACE_quikclot",5},{"ACE_fieldDressing",5},{"ACE_packingBandage",5},{"ACE_elasticBandage",5},{"ACE_morphine",1},{"ACE_tourniquet",1}}},{"rhsusf_iotv_ocp_Teamleader",{{"ACE_SpottingScope",1},{"ACE_Tripod",1},{"rhsusf_mag_17Rnd_9x19_JHP",2,17},{"rhsusf_mag_10Rnd_STD_50BMG_M33",1,10}}},{"rhsusf_assault_eagleaiii_ucp",{{"rhsusf_mag_10Rnd_STD_50BMG_M33",1,10},{"rhsusf_mag_10Rnd_STD_50BMG_mk211",2,10}}},"rhsusf_ach_helmet_camo_ocp","G_Aviator",{"lerca_1200_black","","","",{},{},""},{"ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","rhsusf_ANPVS_14"}} ; 
		 }
		 

};

