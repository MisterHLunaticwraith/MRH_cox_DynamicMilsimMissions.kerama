/*
this function makes an object a uav terminal
*/
params ["_object", "_spawnposObject"];

_object setVariable ["MRH_UAVCtrl_SpawnPosObject", _spawnposObject, true];
_statement1 = {_this call MRH_fnc_SpawnMyUav;};
_action1 = ["CreateUav", "Spawner un drone","MRHUavControlCenter\uav.paa", _statement1 , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject; 

_statement2 = {_this call MRH_fnc_ControlUav;};
_action2 = ["ControlUav", "Controler le drone","MRHUavControlCenter\uav.paa", _statement2 , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;