/*
counts how many players have the current rank
eg
["PRIVATE"] call MRH_fnc_CountRankMembers;
*/
params ["_inputrank"];

_result = 0;
{
_countrank = rank _x;
if (_countrank == _inputrank) then {_result = _result +1};
} forEach allplayers;
//returnvalue
_result