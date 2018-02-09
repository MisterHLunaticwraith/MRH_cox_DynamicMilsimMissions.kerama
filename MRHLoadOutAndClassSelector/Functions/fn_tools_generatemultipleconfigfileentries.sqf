/*
generates multiple config entries warning restrictions apply see fn_generateloadoutconfigfile for use
for some reason the function itself sometimes doesn't work properly  but copying the code and executing from the console ingame will yield desired results
*/
[] spawn {
_result = "";
{_configentry = [_x] call MRH_fnc_tools_generateloadoutconfigfile;
_result = _result + endl + _configentry;

} forEach PlayableUnits;

copytoclipboard _result;
_result
};