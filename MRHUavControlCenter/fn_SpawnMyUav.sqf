params ["_received"];

_spawnPosObject =_received getVariable "MRH_UAVCtrl_SpawnPosObject";
_spawnPos = (position  _spawnPosObject);
_spawnDir = getDir _spawnPosObject;
_alreadycreated = false;
{_test = _x getVariable "isMRHCreatedUav"; if (_test) then {_alreadycreated = true};} forEach vehicles;
if (_alreadycreated) ExitWith {hint "Un drone est déjà en jeu, vous ne pouvez en spawner qu'un à la fois";};
_uav = "B_UAV_02_dynamicLoadout_F" createVehicle _spawnPos;
createVehicleCrew _uav;
_uav setDir _spawnDir;

_received setVariable ["MRH_CreatedUav", _uav, true];
_uav setVariable ["isMRHCreatedUav", true, true];
_uav addMPEventHandler ["mpkilled", {_drone = _this select 0; _cam = _drone getVariable "MRH_attachedUavCam"; _cam cameraeffect ["terminate", "back"]; camdestroy _cam;
_drone setVariable ["isMRHCreatedUav", false, true]; systemchat "Drone détruit";}];
[[],MRH_fnc_RefreshAllUavScreens] RemoteExec ["Call",0,true];