/*
resets traits and class
eg
[player] call MRH_fnc_ResetClassAndTraits;
*/
params ["_unit"];

_unit setVariable ["MRHUnitClass", "none",true];
_unit setVariable ["ACE_IsEngineer",0,true];
_unit setUnitTrait ["engineer", false];
_unit setUnitTrait ["explosiveSpecialist", false];
_unit setUnitTrait ["UAVHacker", false];
_unit setUnitTrait ["medic", false];
_unit setVariable ["ace_medical_medicclass", 0, true];
