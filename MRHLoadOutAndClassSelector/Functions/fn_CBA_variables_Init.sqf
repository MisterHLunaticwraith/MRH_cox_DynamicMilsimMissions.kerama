/*
generates CBA options
*/
_allClasses = call MRH_fnc_allClasses;

{
_classinfo = [_x] call MRH_fnc_ReadClasses;
_MaxAllowedNumberString = _classinfo select 6;
_DefaultNumb = _classinfo select 7;
_displayname = _classinfo select 0;
_settingstext = format ["Nombre Maximum de: %1", _displayname];
[_MaxAllowedNumberString, "SLIDER",   [_settingstext,   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, _defaultNumb, 0],1] call cba_settings_fnc_init;
} forEach _allClasses;


_allRanks = ["CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL" ];

{
_ranksinfo = [_x] call MRH_fnc_ReadRanks;
_MaxAllowedNumberString = _ranksinfo select 2;
_DefaultNumb = _ranksinfo select 3;
_displayname = _ranksinfo select 0;
_settingstext = format ["Nombre Maximum de: %1", _displayname];

[_MaxAllowedNumberString, "SLIDER",   [_settingstext,   "-tooltip-"], "MRHDynamicMission - Grades", [0, 15, _DefaultNumb, 0],1] call cba_settings_fnc_init;
} forEach _allRanks;
["MRH_MaxAllowedSpecOps", "SLIDER",   ["Nombre maximum d'Opérateurs Forces Spéciales",   "-tooltip-"], "MRHDynamicMission - Forces Spéciales", [0, 15, 7, 0],1] call cba_settings_fnc_init;

["MRH_MaxAllowedSimultaneousMissions", "SLIDER",   ["Nombre maximum de missions simultanées.",   "Ce réglage définit le nombre maximum de missions qui peuvent être lancées par les joueurs."], "MRHDynamicMission - Réglages de mission", [0, 5, 1, 0],1] call cba_settings_fnc_init;

#include "\a3\editor_f\Data\Scripts\dikCodes.h"
["MRHDynamicMission", "MRHAdmin",["Ouvrir le menu admin d'annulation de mission", "Ce menu n'est accessible qu'aux admins."],{call MRH_fnc_AdminStopMission},{},[DIK_NUMPADMINUS, [true, true, false]]] call CBA_fnc_addKeybind;
["MRHDynamicMission", "MRHPDA",["Ouvrir le PDA", "Ouvre le PDA"],{call MRH_fnc_PDAOpenPda},{},[DIK_NUMPADPLUS, [true, true, false]]] call CBA_fnc_addKeybind;
/*
["MRH_MaxAllowedMedicNumber", "SLIDER",   ["Nombre maximum d'auxiliaires 1er soins.",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 5, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedDoctorNumber", "SLIDER",   ["Nombre maximum d'auxiliaires sanitaires",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 3, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedengineerLVL1Number", "SLIDER",   ["Nombre maximum de techniciens",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 3, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedengineerLVL2Number", "SLIDER",   ["Nombre maximum d'ingénieurs",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 1, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedEODNumber", "SLIDER",   ["Nombre maximum de démineurs",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 2, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedUAVOperatorNumber", "SLIDER",   ["Nombre maximum d'opérateurs drones",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 2, 0],1] call cba_settings_fnc_init;
["MRH_MaxAllowedMGNumber", "SLIDER",   ["Nombre maximum de mitrailleurs",   "-tooltip-"], "MRHDynamicMission - Classes", [0, 15, 6, 0],1] call cba_settings_fnc_init;


// SLIDER --- extra arguments: [_min, _max, _default, _trailingDecimals]
["Test_Setting_3", "SLIDER",   ["-test slider-",   "-tooltip-"], "My Category", [0, 10, 5, 0]] call cba_settings_fnc_init;


_setting	Unique setting name.  Matches resulting variable name STRING//
_settingType	Type of setting.  Can be “CHECKBOX”, “EDITBOX”, “LIST”, “SLIDER” or “COLOR” STRING//
_title	Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>//
_category	Category for the settings menu STRING//
_valueInfo	Extra properties of the setting depending of _settingType.  See examples below <ANY>
_isGlobal	1: all clients share the same setting, 2: setting can’t be overwritten (optional, default: 0) ARRAY
_script	Script to execute when setting is changed.  (optional) <CODE>
[_x] call cba_settings_fnc_get;
*/