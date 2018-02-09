params ["_selectedRank"];
#include "MRH_components.hpp"


//_type = typeName _selectedRank; hint str _type;
if (_selectedRank == "") ExitWith {hint "pas de grade sélectionné";};

if (_selectedRank == "PRIVATE") ExitWith {player setRank _selectedRank; closedialog 0; hint "Vous êtes à nouveau trouffion de base. Attention votre matériel a été réinitialisé.";[player, "AtEase"] call MRH_fnc_equipSelectedLoadOut;};
_rankinfo = [_selectedRank] FUNC(ReadRanks);
_selectedPrettyname = _rankinfo select 0;
_maxAllowedNumber = [_rankinfo select 2] call cba_settings_fnc_get;
_currentPlayerInThisRank = [_selectedRank] FUNC(CountRankMembers);
if (_currentPlayerInThisRank < _maxAllowedNumber) then {player setRank _selectedRank; closedialog 0; hint format ["Vous avez été promu au rang de %1, Attention votre matériel a été réinitialisé.", _selectedPrettyname];[player, "AtEase"] call MRH_fnc_equipSelectedLoadOut;} else {hint format ["Le nombre maximum de joueurs pour le grade de %1 est atteint, veuillez selectionner un autre grade", _selectedPrettyname];};
