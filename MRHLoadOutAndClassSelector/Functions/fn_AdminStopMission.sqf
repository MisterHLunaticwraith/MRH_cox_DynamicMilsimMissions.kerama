/*
this function opens a menu only accessible to the admin that allows them to stop any running mission
eg
call MRH_fnc_AdminStopMission;
*/
#include "MRH_components.hpp"
if !(serverCommandAvailable "#kick") ExitWith {};
disableserialization;
_handle = createdialog "MRHAdminMissionCancel";
_ctrlList = ((findDisplay 69854) displayCtrl 1500);
_ctrlText = ((findDisplay 69854) displayCtrl 1100);
_ctrlText ctrlSetStructuredText parsetext "Veuillez sélectionner la mission à annuler dans le menu à droite";
_runningMissionsList = missionNameSpace getVariable "MRH_RunningMissionsList";
{
_MissionInfo = [_x] FUNC(ReadMissionCfg);
_isAlreadyRunning = [_x] FUNC(isRunningMission);

_MissionName = _MissionInfo select 0;
_MissionMakerPic = _MissionInfo select 11;
_MissionMaker = _MissionInfo select 10;
_MissionMakerTooltip = format ["Une mission par: %1",_MissionMaker];
_index = _ctrlList  lbAdd  _MissionName;
lbSetPicture [1500, _index, PAAPATH(mission.paa)]; //voir à changer l'image
lbSetPictureRight [1500, _index, _MissionMakerPic];
lbSetTooltip [1500, _index, _MissionMakerTooltip];

_value = _x;
lbSetData [1500, _index, _value]; 


} forEach _runningMissionsList;

 buttonSetAction [1601, "hint 'Aucune mission sélectionnée'"];