/*
opens and fills the interface with classes choice
*/
#include "MRH_components.hpp"
_handle = createdialog "MRHSimpleSelector";
disableserialization;
_ctrlConfirm = ((findDisplay 69851) displayCtrl 1601);
_ctrlText = ((findDisplay 69851) displayCtrl 1100);

_ctrlText ctrlSetStructuredText parsetext "Choissisez votre classe *indique un rang requit";
_ctrlList = ((findDisplay 69851) displayCtrl 1500);
_currentplayerRank = rank Player;
_allClasses = FUNC(allClasses);
_allRanks = FUNC(allRanks);
_testRankisRequired = count _allRanks;

{
_classInfo = [_x] FUNC(ReadClasses);
_FuckingName = _classInfo select 0;
_requiredRanksArray = _classInfo select 5;
_NumberOfRanksInArray = count _requiredRanksArray;
_RequiresARank = 0;
if (_testRankisRequired != _NumberOfRanksInArray) then {_RequiresARank = 1};
_isallowedClass = false;
if (_currentplayerRank in _requiredRanksArray) then {_isallowedClass = true;};
_maxAllowedNumber = [_classInfo select 6] call cba_settings_fnc_get;
_currentPlayerInThisClass = [_x] FUNC(CountClassMembers);
_fulltext = "";
if (_RequiresARank == 1) then {

_BOOM = [_requiredRanksArray] FUNC(listRanksPrettynames);
hint str _FuckingNameName;
_fulltext = format ["%1 * %4 (%2/%3)", _FuckingName, _currentPlayerInThisClass, _maxAllowedNumber, _BOOM];} else
{_fulltext = format ["%1 (%2/%3)", _FuckingName, _currentPlayerInThisClass, _maxAllowedNumber];};

_displayPicture = _classInfo select 8;
//_displayPicture = str _displayPicture;
_index = _ctrlLIST  lbAdd  _fulltext;//
lbSetPictureColor [1500, _index, [0,0,0,0]];
lbSetPicture [1500, _index, _displayPicture];
//lbSetPictureRight [1500, _index, _displayPicture];
lbSetTooltip [1500, _index, _displayName];
_value = _x;
lbSetData [1500, _index, _value]; 
//if (_x != "PRIVATE") then {
if (_currentPlayerInThisClass >= _maxAllowedNumber) then {lbSetColor [1500, _index,[1, 0, 0, 0.6]] };
if !(_isallowedClass) then {lbSetColor [1500, _index,[1, 0, 0, 0.6]] };
//};

} forEach _allClasses;

 buttonSetAction [1601, "
 _index = lbCurSel 1500;
_value = lbData [1500, _index];
[player,_value] call MRH_fnc_setUnitClass;
"];






/*
_allRanks = FUNC(allRanks);

{
_rankinfo = [_x] FUNC(ReadRanks);
_displayName = _rankinfo select 0;
_displayPicture = _rankinfo select 1;
_maxAllowedNumber = [_rankinfo select 2] call cba_settings_fnc_get;
_currentPlayerInThisRank = [_x] FUNC(CountRankMembers);
if (_x == "PRIVATE") then {_maxAllowedNumber = "Illimité";};

_fulltext = format ["%1 (%2/%3)", _displayName,_currentPlayerInThisRank, _maxAllowedNumber];
_index = _ctrlLIST  lbAdd  _fulltext;//
lbSetPictureColor [1500, _index, [0,0,0,0]];
//lbSetPicture [1500, _index, _displayPicture];
lbSetPictureRight [1500, _index, _displayPicture];
lbSetTooltip [1500, _index, _displayName];
_value = _x;
lbSetData [1500, _index, _value]; 
if (_x != "PRIVATE") then {
if (_currentPlayerInThisRank >= _maxAllowedNumber) then {lbSetColor [1500, _index,[1, 0, 0, 0.6]] };
};

} forEach _allRanks;
 
 buttonSetAction [1601, "
 _index = lbCurSel 1500;
_value = lbData [1500, _index];
[_value] call MRH_fnc_setRank;
"];
*/