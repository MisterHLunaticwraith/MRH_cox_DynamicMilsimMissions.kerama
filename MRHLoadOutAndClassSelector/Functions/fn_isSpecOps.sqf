/*
checks wether the player is qualified for specOps
returns BOOLEAN
*/
params ["_player"];
_check = _player getVariable "MRHIsSpecOps";
if (isNil "_check") then {_check = false;};
//return value
_check