/*
makes object source object for ace addaction
parameter _resource defines which type of menu the action will open
allowed params are "RankSelector", "SpecOpsJoin", "ClassSelector" , "LoadOutPicker" and "MissionPicker"
eg
[this, "RankSelector"] call MRH_fnc_addAceAction;
*/

params ["_object","_resource"];



[_object, _resource] spawn {
params ["_object","_resource"];
#include "MRH_components.hpp"
//hint str PAAPATH(rank.paa);
//hint format ["%1 %2", str _object, str _resource];


switch (true) do {

case (_resource == "RankSelector") : {
#include "MRH_components.hpp"
_statement = {call MRH_fnc_ChooseRank;};_action = ["SelectRank", "Obtenir une promotion",PAAPATH(rank.paa), _statement , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 
};

case (_resource == "ClassSelector") : {
#include "MRH_components.hpp"
_statement = {call MRH_fnc_ChooseClass;};_action = ["SelectClass", "Choisir une spécialisation",PAAPATH(training.paa), _statement , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 
};

case (_resource == "LoadOutPicker") : {
#include "MRH_components.hpp"
_statement = {call MRH_fnc_ChooseLoadout;};_action = ["SelectloadOut", "Choisir votre équipement",PAAPATH(loadoutchange.paa), _statement , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 
};

case (_resource == "SpecOpsJoin") : {
#include "MRH_components.hpp"
_statement = {call MRH_fnc_JoinSpecOps;};_action = ["JoinSpecOps", "S'engager dans les forces spéciales",PAAPATH(specops.paa), _statement , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 
};

case (_resource == "MissionPicker") : {
#include "MRH_components.hpp"
_statement = {call MRH_fnc_ChooseMission;};_action = ["ChooseMission", "Choisir une mission",PAAPATH(briefing.paa), _statement , {true},{},[],[0,0,0], 5] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 
};

///finswitch
};
///finspawn
};