/*
this function returns the number of currently running missions
eg:
 _numberOfActiveMissions = call MRH_fnc_CountRunningMissions;
*/
_return = missionNameSpace getVariable "MRH_RunningMissionsNumber";
if (isNil "_return") then {_return = 0;};
_return