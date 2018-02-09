/*
opens and fills the loadout picker
*/
#include "MRH_components.hpp"
_handle = createdialog "MRHLoadOutPicker";
disableserialization;
_loadOutList = FUNC(allLoadouts);
//copytoclipboard str _loadOutList;
_ctrlList = ((findDisplay 69853) displayCtrl 1500);
{
_loadOutInfo = [_x] FUNC(ReadLoadOuts);
_loadOutName = _loadOutInfo select 0;
_isLoadOutAllowedForPlayer = [player , _x] FUNC(isLoadOutAllowedForPlayer);

_index = _ctrlList  lbAdd  _loadOutName;
lbSetPicture [1500, _index, PAAPATH(allowed.paa)];
lbSetTooltip [1500, _index, _loadOutName];
_value = _x;
lbSetData [1500, _index, _value]; 

if (!_isLoadOutAllowedForPlayer) then {lbSetColor [1500, _index,[1, 0, 0, 0.6]]; lbSetPicture [1500, _index, PAAPATH(notallowed.paa)]; };





} forEach _loadOutList;

 buttonSetAction [1601, "hint 'Aucun équipement sélectionné'"];