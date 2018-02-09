/*
creates an array of config entries for unitclasses
eg
_allClasses = call MRH_fnc_allClasses;
*/
_allClasses = [];
_allClasses = getarray (missionconfigfile>>"CfgMRHUnitClasses">>"allUnitClasses");
_allClasses