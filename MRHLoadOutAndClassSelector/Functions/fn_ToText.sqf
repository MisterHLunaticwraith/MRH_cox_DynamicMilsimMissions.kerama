/*
converts string to variablename fromobject this function is badly named and will have to be renamed
*/
params ["_toconvert"];
_result = missionNamespace getVariable [_toconvert , objNull];
_result