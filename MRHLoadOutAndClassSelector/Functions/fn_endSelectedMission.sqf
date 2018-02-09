/*
this functions ends a mission, deletes the composition and removes all linked objects
it resets time and weather condition to default settings and sets indeside as neutral
it removes the mission from the activemissionslist
eg
params are 0 =  mission config name, 1 delay before deletion in seconds
["testMission",600] call MRH_fnc_endSelectedMission; ==> will delete mission assets after 10sec
this needs to be called on all machines
eg:
[["testMission",600], MRH_fnc_endSelectedMission] RemoteExec ["Call",0,true];
*/
params ["_mission", "_delay"];
if (isNil "_delay") then {_delay = 0};


[_mission, _delay] spawn {

params ["_mission", "_delay"];
sleep _delay;
#include "MRH_components.hpp"
_missionInfos = [_mission] FUNC(ReadMissionCfg);
_CurrentMissionVar = _missionInfos select 9; //string to be used with setVariable
_compRef = missionNameSpace getVariable  _CurrentMissionVar;
[_compRef] call LARs_fnc_deleteComp;

//// removes runningmissioninfo from the pile
_numberOfActiveMissions = missionNameSpace getVariable "MRH_RunningMissionsNumber";
_numberOfActiveMissions = _numberOfActiveMissions  -1;
missionNameSpace setVariable ["MRH_RunningMissionsNumber", _numberOfActiveMissions,true];

_runningMissionsList = missionNameSpace getVariable "MRH_RunningMissionsList";
_runningMissionsList deleteAt (_runningMissionsList find _mission);
missionNameSpace setVariable ["MRH_RunningMissionsList", _runningMissionsList, true];
_backToNormalDate = getarray (missionconfigfile>>"CfgMRHMissions">>"deFaultResetTime");
_backToNormalWeather = getarray (missionconfigfile>>"CfgMRHMissions">>"deFaultResetWeather");
setDate _backToNormalDate;
[_backToNormalWeather] FUNC(ChangeWeather);
[1] FUNC(ChangeIndeSide);
};