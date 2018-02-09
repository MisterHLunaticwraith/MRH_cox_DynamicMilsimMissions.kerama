/*
this function returns an array of arrays for the given loadout
Each subarray contains ["displayname", "displaypitcure"] for the given items
arrays are aranged as follows:

_weapon =  select 0) 
_launcher =  select 1 
_handgun = select 2 
_uniform =  select 3 
_vest =  select 4) 
_backpack =  select 5
_helmet =  select 6;
_facewear =  select 7;

*/
#include "MRH_components.hpp"
params ["_loadout"];


_all = [_loadout] FUNC(readLoadOuts);
_all = _all select 4;
_weapon = (_all select 0) select 0;
_launcher = (_all select 1) select 0;
_handgun = (_all select 2) select 0;
_uniform = (_all select 3) select 0;
_vest = (_all select 4) select 0;
_backpack = (_all select 5) select 0;
_helmet = _all select 6;
_facewear =  _all select 7;

//_allSortedGear = [_weapon, _launcher, _handgun, _uniform, _vest, _backpack, _helmet, _facewear];
//hint str _allSortedGear;

_nullArray = ["Non équipé", PAAPATH(notallowed.paa)];
////////////weapon
_weaponsArray = [];
if (isNil "_weapon") then { _nullArray = ["Non équipé", PAAPATH(notallowed.paa), "Arme :"]; _weaponsArray = _nullArray;} else {
_weaponName = gettext (configfile>>"cfgWeapons">>_weapon>>"displayname");
_weaponPic = gettext (configfile>>"cfgWeapons">>_weapon>>"picture");
if (isNil "_weaponPic") then {_weaponPic = PAAPATH(nopic.paa)};
 _weaponsArray = [_weaponName,_weaponPic, "Arme: "];
};
////////////////////launcher
_launcherArray = [];
if (isNil "_launcher") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa),"Lance roquettes:"]; _launcherArray = _nullArray;} else {
_launcherName = gettext (configfile>>"cfgWeapons">>_launcher>>"displayname");
_launcherPic = gettext (configfile>>"cfgWeapons">>_launcher>>"picture");
if (isNil "_launcherPic") then {_launcherPic = PAAPATH(nopic.paa)};
 _launcherArray = [_launcherName,_launcherPic, "Lance roquettes:"];
};
////////////handgun
_handgunArray = [];
if (isNil "_handgun") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa),"Arme secondaire:"]; _handgunArray = _nullArray;} else {
_handgunName = gettext (configfile>>"cfgWeapons">>_handgun>>"displayname");
_handgunPic = gettext (configfile>>"cfgWeapons">>_handgun>>"picture");
if (isNil "_handgunPic") then {_handgunPic = PAAPATH(nopic.paa)};
 _handgunArray = [_handgunName,_handgunPic, "Arme secondaire"];
};
///////uniform
_uniformArray = [];
if (isNil "_uniform") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa),"Uniforme:"];_uniformArray = _nullArray;} else {
_uniformName = gettext (configfile>>"cfgWeapons">>_uniform>>"displayname");
_uniformPic = gettext (configfile>>"cfgWeapons">>_uniform>>"picture");
if (isNil "_uniformPic") then {_uniformPic = PAAPATH(nopic.paa)};
 _uniformArray = [_uniformName,_uniformPic, "Uniforme:"];
};
////////vest
_vestArray = [];
if (isNil "_vest") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa),"Gilet:"]; _vestArray = _nullArray;} else {
_vestName = gettext (configfile>>"cfgWeapons">>_vest>>"displayname");
_vestPic = gettext (configfile>>"cfgWeapons">>_vest>>"picture");
if (isNil "_vestPic") then {_vestPic = PAAPATH(nopic.paa)};
 _vestArray = [_vestName,_vestPic, "Gilet:"];
};
////////////////////backpack
_backpackArray = [];
if (isNil "_backpack") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa), "Sac à dos:"]; _backpackArray = _nullArray;} else {
_backpackName = gettext (configfile>>"cfgVehicles">>_backpack>>"displayname");
_backpackPic = gettext (configfile>>"cfgVehicles">>_backpack>>"picture");
if (isNil "_backpackPic") then {_backpackPic = PAAPATH(nopic.paa)};
 _backpackArray = [_backpackName,_backpackPic, "Sac à dos:"];
};
///////////////////////helmet
_helmetArray = [];
if (isNil "_helmet") then {_nullArray = ["Non équipé", PAAPATH(notallowed.paa), "Casque:"];_helmetArray = _nullArray;} else {
_helmetName = gettext (configfile>>"cfgWeapons">>_helmet>>"displayname");
_helmetPic = gettext (configfile>>"cfgWeapons">>_helmet>>"picture");
if (isNil "_helmetPic") then {_helmetPic = PAAPATH(nopic.paa)};
 _helmetArray = [_helmetName,_helmetPic, "Casque:"];
};
/////////////////facewear
_facewearArray = [];
if (_facewear == "") then { _nullArray = ["Non équipé", PAAPATH(notallowed.paa), "Accessoire:"]; _facewearArray = _nullArray;} else {
_facewearName = gettext (configfile>>"cfgGlasses">>_facewear>>"displayname");
_facewearPic = gettext (configfile>>"cfgGlasses">>_facewear>>"picture");
if (isNil "_facewearPic") then {_facewearPic = PAAPATH(nopic.paa)};
 _facewearArray = [_facewearName,_facewearPic, "Accessoire:"];
};
////////////////FINALARRAY
_result = [_weaponsArray,_launcherArray, _handgunArray, _uniformArray, _vestArray, _backpackArray, _helmetArray, _facewearArray];
copytoclipboard str _result;
_result