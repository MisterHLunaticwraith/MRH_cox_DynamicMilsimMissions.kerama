/*
refreshes the mission detailslist
*/
#include "MRH_components.hpp"
disableserialization;
_ctrlMissionName = ((findDisplay 69877) displayCtrl 1101);
_ctrlMissionTimeDateAndPlayers = ((findDisplay 69877) displayCtrl 1102);
_ctrlMissionSummary = ((findDisplay 69877) displayCtrl 1103);
_ctrlMissionPics = ((findDisplay 69877) displayCtrl 1104);

////clears the list
lbClear 1501;
//// gets the indexvalue
 _index = lbCurSel 1500;
_value = lbData [1500, _index];

_missionInfo = [_value] FUNC(ReadMissionCfg);

/////setsthemissionname
_displayName = _missionInfo select 0; //String
_displayNameAltered = "<t size = '1'><t color='#ffffff'> Mission: </t> <t color='#276cf7'>" + _displayName + "</t>";
_ctrlMissionName ctrlSetStructuredText parsetext _displayNameAltered;


/////// sest mission recommandations
_MissionTimeAndDate = _missionInfo select 2; // array of numbers to be used with setDate
_RecommendedPlayersNumber = _missionInfo select 3; // Integer
_RecommendedPlayersNumber = "<t color='#d68242'>" + str _RecommendedPlayersNumber + "</t>";
_date = str (_MissionTimeAndDate select 2) + "/" + str (_MissionTimeAndDate select 1) + "/" + str (_MissionTimeAndDate select 0);
_date = "<t color='#d68242'>" + _date + "</t>";
_time = str (_MissionTimeAndDate select 3)+ "h"+ str (_MissionTimeAndDate select 4);
_time = "<t color='#d68242'>" + _time + "</t>";
_MissionParamsText = "Nombre de joueurs: " + " " + _RecommendedPlayersNumber +" " + "Date: " + _date + " Heure: " + _time;
_MissionParamsText =  "<t size = '0.7'><t color='#ffffff'>" + _MissionParamsText + "</t>";
_ctrlMissionTimeDateAndPlayers ctrlSetStructuredText parsetext _MissionParamsText;




////////////
_MissionMaker = _missionInfo select 10; // string mission maker prettyname
_MissionMaker = "<t color='#d68242'>" + _MissionMaker + "</t>";
_MissionMakerPic = _missionInfo select 11; //string missionmaker's tag.paa
_MissionMakerPic = "<img image="+"'"+ _MissionMakerPic+"'" +"/>";

_MissionSummary = _missionInfo select 4; //string
_AdditionalInfos = _missionInfo select 6; //string

_stringFinal = 
"Cette mission a été créee par: " + _MissionMaker + " " + _MissionMakerPic
+ "<br/><br/>" +
"Mission: " + " " +
"<t color='#d65d42'>"+
_displayName + "</t>"
+ "<br/><br/>" +
"<t color='#d68242'>Résumé:</t>"
+ "<br/>" +
_MissionSummary
+ "<br/>" +
"<t color='#d68242'>A savoir:</t>"
+ "<br/>" +
_AdditionalInfos
;

_ctrlMissionSummary ctrlSetStructuredText parsetext _stringFinal;

_myControlPos = ctrlPosition _ctrlMissionSummary;
_ctrlh = ctrlTextHeight _ctrlMissionSummary;
_x = _myControlPos select 0;
_y = _myControlPos select 1;
_z = _myControlPos select 2;
_ctrlMissionSummary ctrlSetPosition [_x, _y,_z ,_ctrlh];
_ctrlMissionSummary ctrlCommit 0;
///AFINIR
_AdditionalPics = _missionInfo select 8; //array of strings paths to the pictures
//systemchat str _AdditionalPics;
_picturesString = "";
{
_insideString = "<t size='5'><img image="+"'"+ (_x select 0) +"'" +"/></t><br/>" +(_x select 1) + "<br/>";
_picturesString = _picturesString + _insideString;
} forEach _AdditionalPics;
//_picturesString = "<t size='5'>" + _picturesString +"</t>";
_ctrlMissionPics ctrlSetStructuredText parsetext _picturesString;

_myControlPos2 = ctrlPosition _ctrlMissionPics;
_ctrlh2 = ctrlTextHeight _ctrlMissionPics;
_x2 = _myControlPos2 select 0;
_y2 = _myControlPos2 select 1;
_z2 = _myControlPos2 select 2;
_ctrlMissionPics ctrlSetPosition [_x2, _y2,_z2 ,_ctrlh2];
_ctrlMissionPics ctrlCommit 0;


buttonSetAction [1600, "call MRH_fnc_ChosenMissionLaunch;"];




/*
_stringfinal = format ["Requiert: GRADE: %1,SPEC.: %2.%3", _requiredRanksPrettyNames, _RequiredClassesPrettyNames, _specopsprettyname];
//hint _stringfinal;
_stringfinal = "<t size = '0.5'><t color='#1CF41C'> " + _stringfinal + "</t>";
_ctrlRequires ctrlSetStructuredText parsetext _stringfinal;
*/






////checksifamissionisrunnigandsetsbuttonactionTODO
/*
_isLoadOutAllowedForPlayer = [player , _value] FUNC(isLoadOutAllowedForPlayer);
if (_isLoadOutAllowedForPlayer) then {
 buttonSetAction [1601, "
 _index = lbCurSel 1500;
_value = lbData [1500, _index];
[player, _value] call MRH_fnc_equipSelectedLoadOut;
hint 'Vous avez reçu votre nouveau matériel soldat!';
closedialog 0;
"];
} else {
 buttonSetAction [1601, "hint 'Vous ne remplissez pas les conditions nécessaires pour utiliser cet équipement.';"];
};
*/