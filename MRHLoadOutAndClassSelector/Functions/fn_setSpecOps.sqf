/*
sets specops status BOOLEAN
eg
[player, true] call MRH_fnc_setSpecOps;
*/
params ["_unit","_status"];
_unit setVariable ["MRHIsSpecOps", _status, true];
[player, "AtEase"] call MRH_fnc_equipSelectedLoadOut;