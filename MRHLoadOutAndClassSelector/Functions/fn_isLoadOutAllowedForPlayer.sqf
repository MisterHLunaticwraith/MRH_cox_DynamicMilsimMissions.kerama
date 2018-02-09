/*
checks if selected loadout is allowed for player
returns BOOL
ex: _check = [player, "medic"] call MRH_fnc_isLoadOutAllowedForPlayer;
Returns true or false
*/
params ["_player", "_class"];
#include "MRH_components.hpp"
_playerRank = rank _player;
_loadoutinfo = [_class] call MRH_fnc_ReadLoadOuts;
_loadOutIsForSpecOps = (_loadoutinfo select 3);
if (_loadOutIsForSpecOps) then {_loadOutIsForSpecOps=1;} else {_loadOutIsForSpecOps=0};
_playerClass = _player getVariable "MRHUnitClass";
if (isNil "_playerClass") then {_playerClass = "none";};
_isSpecOps = [_player] call MRH_fnc_isSpecOps;
if (_isSpecOps) then {_isSpecOps=1;} else {_isSpecOps=0;};

_test1 = _playerRank in (_loadoutinfo select 1);
_test2 = _playerClass in (_loadoutinfo select 2);
if (_isSpecOps == 1) then {_loadOutIsForSpecOps = 1};
_test3 = _isSpecOps == _loadOutIsForSpecOps;

//hint format [" rankok %1, classok %2, specopsok %3",str _test1, str _test2, str _test3];
_returnvalue = "";
if (_test1 && _test2 && _test3) then {_returnValue = true;} else {_returnValue = false;};
//hint str _returnValue;
///Returnvalue:
_returnValue
