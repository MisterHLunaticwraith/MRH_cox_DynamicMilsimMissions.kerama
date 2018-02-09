/*
refreshes the loadoutdetailslist
*/
#include "MRH_components.hpp"
disableserialization;
_ctrlList = ((findDisplay 69853) displayCtrl 1501);
_ctrlRequires = ((findDisplay 69853) displayCtrl 1101);
_ctrlName = ((findDisplay 69853) displayCtrl 1102);
lbClear 1501;
 _index = lbCurSel 1500;
_value = lbData [1500, _index];
_details = [_value] FUNC(getLoadOutDetails);
///
_loadoutInfo = [_value] FUNC(ReadLoadOuts);
_loadOutName = _loadoutInfo select 0;
_ctrlName ctrlSetStructuredText parsetext _loadOutName;
_requiredRanks = getarray (missionconfigfile>>"CfgMRHloadouts">>_value>>"RequiredRanks");
_requiredClasses = _loadoutInfo select 2;
_requiresSpecOps =  _loadoutInfo select 3;

_requiredRanksPrettyInfosArray = [];
_requiredRanksPrettyNames = "";
if ("none" in _requiredRanks) then {_requiredRanksPrettyNames = "pas de grade spécifique"; } else {
{
_rankinfo = [_x] FUNC(ReadRanks);

_name = _rankinfo select 0;

_requiredRanksPrettyInfosArray pushBack _name;
} forEach _requiredRanks;

_requiredRanksPrettyNames = str _requiredRanksPrettyInfosArray;

};
//////
_allClasses = FUNC(allClasses);
_countclasses = count _allClasses;
_countrequired = count _requiredClasses;
_RequiredClassesPrettyNames = "";
if (_countclasses == _countrequired) then { _RequiredClassesPrettyNames = "pas de spécialisation requise";} else {
_RequiredClassesPrettyInfosArray = [];
{
_classInfo = [_x] FUNC(ReadClasses);
_classPretty = _classInfo select 0;
_RequiredClassesPrettyInfosArray pushBackUnique _classPretty;
} forEach _requiredClasses;
_RequiredClassesPrettyNames = str _RequiredClassesPrettyInfosArray;
};
_specopsprettyname = "";
if( _requiresSpecOps) then {_specopsprettyname = "Requiert de faire partie des FS";} else {_specopsprettyname = "";};
_stringfinal = format ["Requiert: GRADE: %1,SPEC.: %2.%3", _requiredRanksPrettyNames, _RequiredClassesPrettyNames, _specopsprettyname];
//hint _stringfinal;
_stringfinal = "<t size = '0.5'><t color='#1CF41C'> " + _stringfinal + "</t>";
_ctrlRequires ctrlSetStructuredText parsetext _stringfinal;
////


_weapon = _details select 0; 
_launcher = _details  select 1; 
_handgun = _details select 2; 
_uniform = _details select 3;  
_vest = _details select 4; 
_backpack = _details select 5; 
_helmet = _details select 6; 
_facewear = _details select 7; 

_array = [_weapon, _launcher, _handgun, _uniform, _vest, _backpack, _helmet, _facewear];

{
_name = _x select 0;
_pic = _x select 1;
_Pretext = _x select 2;
_name = [_Pretext, _name] joinstring " ";
_index = _ctrlList  lbAdd  _name;//
lbSetPictureColor [1501, _index, [0,0,0,0]];
lbSetPicture [1501, _index, _pic];
_picture = lbPicture [1501, _index];

} forEach _details;



_isLoadOutAllowedForPlayer = [player , _value] FUNC(isLoadOutAllowedForPlayer);
if (_isLoadOutAllowedForPlayer) then {
 buttonSetAction [1601, "
 _index = lbCurSel 1500;
_value = lbData [1500, _index];
[player, _value] call MRH_fnc_equipSelectedLoadOut;
hint 'Vous avez reçu votre nouveau matériel soldat!';
closedialog 0;
"];
} else {
 buttonSetAction [1601, "hint 'Vous ne remplissez pas les conditions nécessaires pour utiliser cet équipement.';"];
};