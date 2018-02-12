#include "MRH_components.hpp"
params ["_mission"];
_missionInfos = [_mission] FUNC(ReadMissionCfg);


_MissionComp = _missionInfos select 1; // string composition.sqe to be spawned
_CurrentMissionVar = _missionInfos select 9; //string to be used with setVariable


_compRef = [_MissionComp] call LARs_fnc_spawnComp;
missionNameSpace SetVariable [ _CurrentMissionVar, _compRef, true];