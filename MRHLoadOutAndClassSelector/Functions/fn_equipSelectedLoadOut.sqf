/*
gives the player the selected loadout
ex:
[payer, "medic"] call MRH_fnc_equipSelectedLoadOut;
*/
params ["_player", "_selectedLoadout"];
_loadoutinfo = [_selectedLoadout] call MRH_fnc_ReadLoadOuts;
_player setUnitLoadout [ _loadoutinfo select 4, true];