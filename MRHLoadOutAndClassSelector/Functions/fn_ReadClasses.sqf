/*

reads missionconfigfiles and returns ARRAY in the form

for the specified Unit Class
example 
_classinfo = ["medic"] call MRH_fnc_ReadClasses;
Returns:
Displayname (select 0) STRING
isAceMedic (select 1)INTEGER //0 not a medic 1 medic 2 doctor
isAceEngineer (select 2) INTEGER //0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
isUavHacker (select 3) BOOLEAN
isExplosiveSpecialist (select 4) BOOLEAN
RequiredRank (select 5) ARRAY
MaxAllowedNumberStringName (select 6) STRING
DefaultMaxAllowedNumber (select 7) INTEGER
DisplayPicture (select 8) STRING
*/

params ["_class"];
_displayName = gettext (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"Displayname");
_isAceMedic =  getnumber (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"isAceMedic");
_isAceEngineer = getnumber (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"isAceEngineer");
_isUavHacker = getnumber (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"isUavHacker");
switch (true) do {
case (_isUavHacker == 1): {_isUavHacker = true};
case (_isUavHacker == 0): {_isUavHacker = false};
};
_isExplosiveSpecialist = getnumber (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"isExplosiveSpecialist");
switch (true) do {
case (_isExplosiveSpecialist == 1): {_isExplosiveSpecialist = true};
case (_isExplosiveSpecialist == 0): {_isExplosiveSpecialist = false};
};
_requiredRank = gettext (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"RequiredRank");
if (_requiredRank == "NONE") then {_requiredRank = ["PRIVATE","CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL" ];} else {_requiredRank = [_requiredRank]};
_MaxAllowedNumberStringName = gettext (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"MaxAllowedNumberStringName");
_DefaultMaxAllowedNumber = getnumber (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"DefaultMaxAllowedNumber");
_DisplayPicture = gettext (missionconfigfile>>"CfgMRHUnitClasses">>_class>>"displayPicture");



//return value:
[_displayName,_isAceMedic,_isAceEngineer,_isUavHacker,_isExplosiveSpecialist,_requiredRank,_MaxAllowedNumberStringName,_DefaultMaxAllowedNumber,_DisplayPicture]