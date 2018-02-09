/*
opens and fills the missionselector
eg 
call MRH_fnc_ChooseMission
*/
#include "MRH_components.hpp"
_handle = createdialog "MRHMissionPicker";
disableserialization;
_allMissions = FUNC(allMissions);
_ctrlList = ((findDisplay 69877) displayCtrl 1500);
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
if (_isAlreadyRunning) then {lbSetColor [1500, _index, [1, 0, 0, 1]]; lbSetTooltip [1500, _index, "Cette mission est déjà active"];lbSetPicture [1500, _index, PAAPATH(notallowed.paa)];};
_value = _x;
lbSetData [1500, _index, _value]; 


} forEach _allMissions;

 buttonSetAction [1600, "hint 'Aucune mission sélectionnée'"];