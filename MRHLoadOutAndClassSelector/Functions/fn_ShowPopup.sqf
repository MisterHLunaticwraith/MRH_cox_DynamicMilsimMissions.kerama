/*
shows or hides the popupinterface
fills it if necessary
params are :
isMax
isRunning
isRunningButOk
isOk
CloseInterFace
*/
params ["_CaseValue"];


#define INTERFACE [1205,1610,1111]
#define SHOWINTERFACE(ARG) {ctrlShow [_x, ##ARG##];} forEach INTERFACE


if (_CaseValue == "CloseInterFace") ExitWith {SHOWINTERFACE(false);};

SHOWINTERFACE(true);
_textZone = ((findDisplay 69877) displayCtrl 1111);
_buttonText = ((findDisplay 69877) displayCtrl 1611);

switch (true) do {
case (_CaseValue == "isMax") : {
buttonSetAction [1610, "['CloseInterFace'] call MRH_fnc_ShowPopup;"];
_textZone ctrlSetStructuredText parsetext "Le nombre maximum de missions simultanées est atteint, vous ne pouvez pas en lancer une nouvelle.";
};
case (_CaseValue == "isRunning") : {
buttonSetAction [1610, "['CloseInterFace'] call MRH_fnc_ShowPopup;"];
_textZone ctrlSetStructuredText parsetext "La mission selectionnée est déjà active. Vous ne pouvez pas lancer une mission déjà en cours.";

};
case (_CaseValue == "isRunningButOk") : {
buttonSetAction [1610, "['CloseInterFace'] call MRH_fnc_ShowPopup;"];
_textZone ctrlSetStructuredText parsetext "<t size = '0.7'>ATTENTION: Une Mission est déjà en cours, vous pouvez en lancer une nouvelle mais les paramètres de temps et de météo resteront ceux de la mission en cours. L'expérience de jeu peut être différente de celle prévue par le Mission Maker</t>";
ctrlShow [1611, true];
_buttonText ctrlSetText "Lancer tout de même";
buttonSetAction [1611,"
closedialog 0;

 _index = lbCurSel 1500;
_missiontorun = lbData [1500, _index];

[[_missiontorun], MRH_fnc_StartMission] RemoteExec ['Call', 0];
[[_missiontorun], MRH_fnc_ServerSpawnComp] RemoteExec ['Call', 2];
"];
};
case (_CaseValue == "isOk") : {
buttonSetAction [1610, "['CloseInterFace'] call MRH_fnc_ShowPopup;"];
_textZone ctrlSetStructuredText parsetext "Voulez vous vraiment lancer la mission?";
ctrlShow [1611, true];
_buttonText ctrlSetText "Lancer";
buttonSetAction [1611,"
closedialog 0;

 _index = lbCurSel 1500;
_missiontorun = lbData [1500, _index];
[[_missiontorun], MRH_fnc_StartMission] RemoteExec ['Call', 0];
[[_missiontorun], MRH_fnc_ServerSpawnComp] RemoteExec ['Call', 2];
"];
};
////endswitchbelow
};
/////ORG:
/*
[_missiontorun] call MRH_fnc_StartMission;//tODO
*/


