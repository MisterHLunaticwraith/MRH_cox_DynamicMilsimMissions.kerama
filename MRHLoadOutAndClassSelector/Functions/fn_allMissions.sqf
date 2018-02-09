/*
creates an array of config entries for missions
eg
_allMissions = call MRH_fnc_allMissions;
*/
_allMissions = [];
_allMissions = getarray (missionconfigfile>>"CfgMRHMissions">>"allTGVMissions");
_allMissions