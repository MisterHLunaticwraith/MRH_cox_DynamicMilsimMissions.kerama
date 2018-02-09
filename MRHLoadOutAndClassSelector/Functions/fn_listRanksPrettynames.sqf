/*
Returns an array of displaynames for the given array of ranks
this function is a workaround for an issue in fn_chooseclas
*/

params ["_RanksArray"];
_array = [];
{
_rankinfo = [_x] call MRH_fnc_ReadRanks;
_prettyname = _rankinfo select 0;
_array pushBack _prettyname;

} forEach _RanksArray;
_array
