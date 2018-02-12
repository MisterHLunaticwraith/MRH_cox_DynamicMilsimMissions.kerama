/*
counts how many players are in the current class
eg
["medic"] call MRH_fnc_CountClassMembers;
*/
params ["_playerclassName"];
_result = 0;
{
_playerclass= _x getVariable "MRHUnitClass";
if (_playerclass == _playerclassName) then {_result = _result +1};
} forEach allplayers;
//returnvalue
_result