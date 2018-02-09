/*
this function opens the soldier's pda
*/
#include "MRH_components.hpp"
disableserialization;
createdialog "MRHSoldierPda";
/////////Fill the soldier info
_soldInfoList = ((finddisplay 67877) displayCtrl 1500);
_playerRank = rank player;
_rankinfo = [_playerRank] FUNC(ReadRanks);
_rankpretty = _rankinfo select 0;
_rankpic = _rankinfo select 1;
_index1 = lbAdd [1500, "Votre grade:"];
lbSetColor [1500, _index1, [1, 0.651, 0.302, 1]];
_index2 = lbAdd [1500, _rankpretty];
lbSetPictureRight [1500, _index2, _rankpic]; 
_soldierclass = player getVariable "MRHUnitClass";
_classinfo = [_soldierclass] FUNC(ReadClasses);
_classprettyname = _classinfo select 0;
_classPic = _classinfo select 8;
_index3 = lbAdd [1500, "Votre spécialisation:"];
lbSetColor [1500, _index3, [1, 0.651, 0.302, 1]];
_index4 = lbAdd [1500, _classprettyname];
lbSetPictureRight [1500, _index4, _classPic]; 


////////////FillMissionsList
_ctrlList = ((findDisplay 67877) displayCtrl 1502);
_allRunningMissions = missionNameSpace getVariable "MRH_RunningMissionsList";
if (isNil "_allRunningMissions") then {_allRunningMissions = [];};
if (count _allRunningMissions == 0) then { _rootInd =lbAdd [1502, "Pas de mission en cours:"];lbSetColor [1502, _rootInd, [1, 0, 0, 1]]; lbSetTooltip [1502, _rootInd, "Rendez-vous au selecteur de mission pour lancer une mission."];lbSetPicture [1500, _index, PAAPATH(notallowed.paa)];} else
{
{
_MissionInfo = [_x] FUNC(ReadMissionCfg);
_MissionName = _MissionInfo select 0;
_MissionMakerPic = _MissionInfo select 11;
_MissionMaker = _MissionInfo select 10;
_MissionMakerTooltip = format ["Une mission par: %1",_MissionMaker];
_index = _ctrlList  lbAdd  _MissionName;
lbSetPicture [1502, _index, PAAPATH(mission.paa)]; //voir à changer l'image
lbSetPictureRight [1502, _index, _MissionMakerPic];
lbSetTooltip [1502, _index, _MissionMakerTooltip];
_value = _x;
lbSetData [1502, _index, _value]; 
} forEach _allRunningMissions;
};
/////////
_CentralText = ((finddisplay 67877) displayCtrl 1100);
_CentralText ctrlSetStructuredText parsetext "Pas de mission sélectionnée."; //possibilité charger aide