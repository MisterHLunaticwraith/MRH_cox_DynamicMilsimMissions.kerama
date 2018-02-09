/*
creates an array of config entries loadouts
eg
_allLoadOuts = call MRH_fnc_allLoadouts;
*/
_allLoadOuts = [];
_allLoadOuts = getarray (missionconfigfile>>"CfgMRHloadouts">>"allLoadouts");
_allLoadOuts