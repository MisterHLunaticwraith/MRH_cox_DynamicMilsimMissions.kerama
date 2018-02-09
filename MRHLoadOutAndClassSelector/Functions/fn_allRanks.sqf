/*
creates an array of config entries ranks
eg
_allRanks = call MRH_fnc_allRanks;
*/
_allRanks = [];
_allRanks = getarray (missionconfigfile>>"CfgMRHRanksExtraInfo">>"allRanks");
_allRanks