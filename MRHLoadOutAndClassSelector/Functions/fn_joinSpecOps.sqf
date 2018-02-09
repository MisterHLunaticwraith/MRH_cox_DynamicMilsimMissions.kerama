_handle= createDialog "MRHJoinSpecOps";
#include "MRH_components.hpp"
_CurrentNumberOfSpecOps = FUNC(CountSpecOps);
_AllowedNumberOfSpecOps = ["MRH_MaxAllowedSpecOps"] call cba_settings_fnc_get;
_playerIsSpecOps = [player] FUNC(isSpecOps);
disableserialization;
_ctrlText = ((findDisplay 69852) displayCtrl 1101);
_ctrlText ctrlSetStructuredText parsetext format ["Les forces spéciales comptent actuellement %1 membre(s) sur %2 place(s) disponibles.", str _CurrentNumberOfSpecOps, str _AllowedNumberOfSpecOps];

if (_playerIsSpecOps) then {ctrlShow [1601,true];
 buttonSetAction [1601, "[player, false] call MRH_fnc_setSpecOps; hint 'Vous venez de quitter les Forces Spéciales. Attention votre équipement a été réinitialisé.';"];
 buttonSetAction [1602, " hint 'Vous faites déjà partie des forces spéciales!';"];};
 
 if (_CurrentNumberOfSpecOps >= _AllowedNumberOfSpecOps) then {buttonSetAction [1602, " hint 'Vous ne pouvez pas rejoindre les Forces Spéciales, les effectifs sont complets';"];} else {buttonSetAction [1602, " hint 'Vous avez rejoint les Forces Spéciales. Attention votre équipement a été réinitialisé.'; [player, true] call MRH_fnc_setSpecOps; closedialog 0;"];};