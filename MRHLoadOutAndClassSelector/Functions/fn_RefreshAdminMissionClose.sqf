/*
refreshes the adminclosemission menu
*/
disableserialization;
#include "MRH_components.hpp"
//// gets the indexvalue
 _index = lbCurSel 1500;
_value = lbData [1500, _index];

_missionInfo = [_value] FUNC(ReadMissionCfg);

/////setsthemissionname
_displayName = _missionInfo select 0; //String


_ctrlList = ((findDisplay 69854) displayCtrl 1500);
_ctrlText = ((findDisplay 69854) displayCtrl 1100);
_text = "Vous avez selectionné la mission: " + "<br/>" + "<t color='#d68242'>" +  _displayName + "</t><br/>Voulez-vous vraiment mettre fin à cette mission?";
_ctrlText ctrlSetStructuredText parsetext _text;

 buttonSetAction [1601, "
  _index = lbCurSel 1500;
_value = lbData [1500, _index];
[[_value,0], MRH_fnc_endSelectedMission] RemoteExec ['Call',0,true];

hint 'Mission annulée';
closedialog 0;
[['CustomMissionLaunched',['Un administrateur a annulé une mission']],'bis_fnc_showNotification',true] call BIS_fnc_MP;
 "];
 //[_value] call  MRH_fnc_endSelectedMission;