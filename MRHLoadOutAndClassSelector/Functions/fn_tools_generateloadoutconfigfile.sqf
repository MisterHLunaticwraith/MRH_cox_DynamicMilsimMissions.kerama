/*
this function generates a config entry from the selected unit to put in cfgMRHLoadouts:

the function grabs the unit's loadout and automatically adds it
to use:
put:
testloadout|{"none","COLONEL"}|{"none","medic"}|0|test 
in the unit's editor description
REQUIRESSPECOPS is an INTEGER (1 or 0)
the resulting config entry will be copied to clipboard
[player] call MRH_fnc_tools_generateloadoutconfigfile;
run the function in game, make sure to be in multiplayer else the function will fail
*/
params ["_unit"];
_source = roleDescription _unit;
//_source = _source;
hint _source;
_input = _source splitString "|";
//copytoclipboard str _input;

_prettyDisplayname = str (_input select 0);
_requiredRanks = _input select 1; 
//_requiredRanks = [_requiredRanks] call MRH_fnc_tools_convert_arraytoconfig; _debug2 = _RequiredRanks;
//_RequiredRanks = parsetext _RequiredRanks;
_requiredClasses = _input select 2;
//_requiredClasses = [_requiredClasses] call MRH_fnc_tools_convert_arraytoconfig;
_RequiresSpecOps = _input select 3;
_loadout =  getUnitLoadout _unit;
_loadout = [_loadout] call MRH_fnc_tools_convert_arraytoconfig;
_classname = _input select 4;




_stringfinal = ["class",
_classname,
endl,
"{",
endl,
"Displayname =", 
_prettyDisplayname,
";",
endl,
"RequiredRanks[]=",
_RequiredRanks,
";",
endl,
"RequiredClasses[] =",
_requiredClasses,
";",
endl,
"RequiresSpecOps =",
_RequiresSpecOps,
";",
endl,
"Loadout[] =",
_loadout,
";",
endl,
"}"];
//_stringfinal = str _stringfinal;
_stringfinal = _stringfinal joinString " ";
copytoclipboard _stringfinal;
_stringfinal

