/*
opens and fills the interface
*/
#include "MRH_components.hpp"
_handle = createdialog "MRHSimpleSelector";
disableserialization;
_ctrlConfirm = ((findDisplay 69851) displayCtrl 1601);
_ctrlText = ((findDisplay 69851) displayCtrl 1100);

_ctrlText ctrlSetStructuredText parsetext "Choissisez votre grade";
_ctrlList = ((findDisplay 69851) displayCtrl 1500);
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