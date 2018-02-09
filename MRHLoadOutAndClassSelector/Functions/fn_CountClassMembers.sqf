/*
counts how many players are in the current class
eg
["medic"] call MRH_fnc_CountClassMembers;
*/
params ["_className"];
_result = 0;
{
_class= _x getVariable "MRHUnitClass";
if (_class == _className) then {_result = _result +1};
} forEach allplayers;
//returnvalue
_result