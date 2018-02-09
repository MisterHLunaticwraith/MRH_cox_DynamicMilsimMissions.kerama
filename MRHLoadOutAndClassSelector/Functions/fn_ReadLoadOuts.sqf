/*

reads missionconfigfiles and returns ARRAY in the form
[displayname(string),[requiredranks ARRAY],[requiredClasses ARRAY], requiresspecops BOOL, [Loadout ARRAYof ARRAYS]]
for the specified class
example 
_loadoutinfo = ["medic"] call MRH_fnc_ReadLoadOuts;
Returns:
Load out name: _loadoutinfo select 0 STRING
Required ranks: _loadoutinfo select 1 ARRAY of STRINGS
Required classes: _loadoutinfo select 2 ARRAY of STRINGS
Requires Spec ops: _loadoutinfo select 3 BOOL
LoadOut : _loadoutinfo select 4 ARRAY of ARRAYS can be used with setUnitLoadOut
eg:
_loadoutinfo = ["medic"] call MRH_fnc_ReadLoadOuts;
player setUnitLoadout [ _loadoutinfo select 4, true];
//example above will give the player the defined medic loadout and replenish is ammo
*/
params ["_configclass"];
#include "MRH_components.hpp"
_displayName = gettext (missionconfigfile>>"CfgMRHloadouts">>_configclass>>"Displayname");
_requiredRanks = getarray (missionconfigfile>>"CfgMRHloadouts">>_configclass>>"RequiredRanks");
_requiredClasses = getarray (missionconfigfile>>"CfgMRHloadouts">>_configclass>>"RequiredClasses");
_requiresSpecOps = getnumber (missionconfigfile>>"CfgMRHloadouts">>_configclass>>"RequiresSpecOps");
switch (true) do {
case (_requiresSpecOps == 1): {_requiresSpecOps = true};
case (_requiresSpecOps == 0): {_requiresSpecOps = false};
};
_loadOut = getarray (missionconfigfile>>"CfgMRHloadouts">>_configclass>>"Loadout");
if ("none" in _requiredRanks) then {_requiredRanks = ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL" ];};
if ("none" in _requiredClasses) then {_requiredClasses = FUNC(allClasses);};//lastedit
//return value:
[_displayName,_requiredRanks,_requiredClasses,_requiresSpecOps,_loadOut]