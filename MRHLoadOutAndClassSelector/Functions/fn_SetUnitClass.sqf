/*
sets "MRHUnitClass"
possible unitclasses are listed in cfgMRHunitClasses.hpp


eg [player, "Medic"] call MRH_fnc_SetUnitClass;


_unit setVariable ["MRHUnitClass", "none",true];
_unit setVariable ["ACE_IsEngineer",0,true];
_unit setUnitTrait ["engineer", false];
_unit setUnitTrait ["explosiveSpecialist", false];
_unit setUnitTrait ["UAVHacker", false];
_unit setUnitTrait ["medic", false];
_unit setVariable ["ace_medical_medicclass", 0, true];
/////////////pourmemoire:
Displayname (select 0) STRING
isAceMedic (select 1)INTEGER //0 not a medic 1 medic 2 doctor
isAceEngineer (select 2) INTEGER //0 not an engineer 1 engineerLVL1 // 2 engineer LVL2
isUavHacker (select 3) BOOLEAN
isExplosiveSpecialist (select 4) BOOLEAN
RequiredRank (select 5) ARRAY
MaxAllowedNumberStringName (select 6) STRING
DefaultMaxAllowedNumber (select 7) INTEGER



*/

params ["_unit", "_SelectedClass"];
//hint format ["%1 %2", str _unit, str _selectedclass];
if (_selectedClass == "") ExitWith {hint "pas de spécialisation sélectionnée";};


_rank = rank _unit;
_rankinfo = [_rank] call MRH_fnc_ReadRanks;
_classinfo = [_SelectedClass] call MRH_fnc_ReadClasses;
_numberAllowedString = _classinfo select 6;
_numberAllowed = [_numberAllowedString] call cba_settings_fnc_get;
_numberCurrent = [_SelectedClass] call MRH_fnc_CountClassMembers;
_requiredRank = _classinfo select 5;
_classPrettyname = _classinfo select 0;
if (_numberCurrent >= _numberAllowed) exitWith {hint format ["Nombre maximum de %1 atteint (max : %2), vous ne pouvez pas acquérir cette spécialisation.", _classPrettyname, _numberAllowed];};//Todo
_playerRankPrettyname = _rankinfo select 0;
_requiredRankInfo = [ _requiredRank select 0] call MRH_fnc_ReadRanks;
_requiredRankPrettyName = _requiredRankInfo select 0;
if !(_rank in _requiredRank) exitWith {hint format ["Vous ne pouvez pas rejoindre cette spécialisation elle nécessite d'être %1 et vous êtes %2",_requiredRankPrettyName,_PlayerRankPrettyname];};//ToDo checkranks
[_unit] call MRH_fnc_ResetClassAndTraits;

_isAceMedic = _classinfo select 1;
_isMedic = false;
if (_isAceMedic > 0) then {_isMedic = true};
_isAceEngineer = _classinfo select 2;
_isEngineer = false;
if (_isAceEngineer > 0) then {_isEngineer = true};
_isUavHacker = _classinfo select 3;
_isExplosiveSpecialist = _classinfo select 4;

_unit setVariable ["MRHUnitClass", _SelectedClass,true];
_unit setVariable ["ACE_IsEngineer",_isAceEngineer,true];
_unit setUnitTrait ["engineer", _isEngineer];
_unit setUnitTrait ["explosiveSpecialist", _isExplosiveSpecialist];
_unit setUnitTrait ["UAVHacker", _isUavHacker];
_unit setUnitTrait ["medic", _isMedic];
_unit setVariable ["ace_medical_medicclass", _isAceMedic, true];
hint format ["Vous êtes maintenant %1, félicitations! Attention: votre équipement a été réinitialisé.", _classPrettyname]; closedialog 0;
[player, "AtEase"] call MRH_fnc_equipSelectedLoadOut;