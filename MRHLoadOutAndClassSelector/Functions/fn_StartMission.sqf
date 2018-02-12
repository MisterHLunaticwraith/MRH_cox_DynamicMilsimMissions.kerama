/*
this function starts a mission
eg:
["Mission1"] call MRH_fnc_StartMission;
*/
#include "MRH_components.hpp"
params ["_mission"];
_missionInfos = [_mission] FUNC(ReadMissionCfg);

_displayName = _missionInfos select 0; //String
_MissionComp = _missionInfos select 1; // string composition.sqe to be spawned
_MissionTimeAndDate = _missionInfos select 2; // array of numbers to be used with setDate
_weather = _missionInfos select 12;
_ExtraInitScript = _missionInfos select 7; //string to be used with ExecVM

_CurrentMissionVar = _missionInfos select 9; //string to be used with setVariable
_MissionMaker = _missionInfos select 10; // string mission maker prettyname
_MissionMakerPic = _missionInfos select 11; //string missionmaker's tag.paa
_AdditionalPics = _missionInfos select 8; //array of strings paths to the pictures
_IndeAllegiance = _missionInfos select 13; //number defines the allegiance of indeside
//a deplacer dans une fonction
_isRunningMission = [_mission] FUNC(isRunningMission);
if (_isRunningMission) ExitWith {hint "Cette mission est déjà en cours";};



_numberOfActiveMissions = FUNC(CountRunningMissions);
if (_numberOfActiveMissions > 0) then { hint "Une mission est déjà en cours, les paramètres de météo et de temps ne seront pas changés"} else {
setDate _MissionTimeAndDate;
[_weather] FUNC(ChangeWeather);
};


///launches extrascript
if (_ExtraInitScript != "none") then {
ExecVM _ExtraInitScript} else {systemchat "pas de script associé"};

//// adds runningmissioninfotothe pile
_numberOfActiveMissions = _numberOfActiveMissions + 1;
missionNameSpace setVariable ["MRH_RunningMissionsNumber", _numberOfActiveMissions,true];
_runningMissionsList = missionNameSpace getVariable "MRH_RunningMissionsList";
if (isNil "_runningMissionsList") then {_runningMissionsList = [];};
_runningMissionsList pushBack _mission;
missionNameSpace setVariable ["MRH_RunningMissionsList" , _runningMissionsList, true];

/*
////spawns the composition
if (isServer) then {

[[_MissionComp,_CurrentMissionVar], MRH_fnc_ServerSpawnComp] RemoteExec ["Call", 2];
};
*/

/////following scripts are not run on the server
if (!hasInterface) ExitWith {};

////notification
_CoreText = format ["Lancement de la mission : %1. Une mission créée par %2", _displayName, _MissionMaker];
["CustomMissionLaunched",[_CoreText]] call bis_fnc_showNotification;
////setaceslideshow
//[[_displayName,_AdditionalPics],FUNC(SetAceSlideShow)] RemoteExec ["Call", 0, true];
[_displayName,_AdditionalPics] FUNC(SetAceSlideShow);
/// set inde allegiance
[_IndeAllegiance] FUNC(ChangeIndeSide);




///showmissionsplashscreen 
[_displayName, _MissionMaker, _MissionMakerPic] spawn {
params ["_displayName", "_MissionMaker", "_MissionMakerPic"];
#include "MRH_components.hpp"
sleep 10;
[_displayname, _MissionMaker, _MissionMakerPic] FUNC(MissionMakerSplash);
};




