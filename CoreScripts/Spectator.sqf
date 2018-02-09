/////bmf-v1_04////
/*
Taken from here https://forums.bistudio.com/topic/177851-spectate-mode-through-an-object/?p=2793480 and slowly modified 
*/
/*
Spectator camera script - v0.2
Runs spectator camera
Created by BearBison
*/
/* Private variables */
private ["_Key","_RscLayer"];
/* Prevents unit moving */
(_this select 1) enableSimulation false;
/* Prevents free spectator camera */
//RscSpectator_allowFreeCam = false;
/* Disable post processing effects for spectator */
BIS_fnc_feedback_allowPP = false;
/* Runs spectator script */
//_RscLayer = "BIS_fnc_respawnSpectator" call bis_fnc_rscLayer;
//_RscLayer cutrsc ["RscSpectator","plain"];

// ACRE / TFAR 
[true] call acre_api_fnc_setSpectator;
//[player, true] call TFAR_fnc_forceSpectator;


["exitSpect", "onEachFrame", {
    
    if (inputAction "ReloadMagazine" > 0) exitWith { // Check if "Reload" key is pressed
        ["Terminate"] call BIS_fnc_EGSpectator; 
        player enableSimulation true;
        [false] call acre_api_fnc_setSpectator;
        BIS_fnc_feedback_allowPP = true;
        ["exitSpect", "onEachFrame"] call BIS_fnc_removeStackedEventHandler; //  Remove the stackedEventHandler as we no longer need it
    };
}] call BIS_fnc_addStackedEventHandler;

["Initialize", [player, [side player], false, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
hintSilent "Appuyez sur R pour quitter le mode spectateur";