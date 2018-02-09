/*
checks wether the input mission is running returns true if the mission is running or false
eg
_check = ["testmission"] call MRH_fnc_isRunningMission;
*/
params ["_mission"];
_return = false;
_runningMissionsList = missionNameSpace getVariable "MRH_RunningMissionsList";
if (isNil "_runningMissionsList") then {_runningMissionsList = [];};
if (_mission in _runningMissionsList) then {_return = true;};
_return