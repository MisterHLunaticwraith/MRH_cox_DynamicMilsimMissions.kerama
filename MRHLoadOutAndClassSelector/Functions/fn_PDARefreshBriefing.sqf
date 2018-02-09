/*
refreshes the pda info according to selectedmission
*/
#include "MRH_components.hpp"
disableserialization;
_ctrlMissionName = ((findDisplay 67877) displayCtrl 1105);
//_ctrlMissionTimeDateAndPlayers = ((findDisplay 69877) displayCtrl 1102);
_ctrlMissionSummary = ((finddisplay 67877) displayCtrl 1100);
//_ctrlMissionPics = ((findDisplay 69877) displayCtrl 1104);

////clears the list
//lbClear 1502;
//// gets the indexvalue
 _index = lbCurSel 1502;
_value = lbData [1502, _index];

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
//_ctrlMissionTimeDateAndPlayers ctrlSetStructuredText parsetext _MissionParamsText;




////////////
_MissionMaker = _missionInfo select 10; // string mission maker prettyname
_MissionMaker = "<t color='#d68242'>" + _MissionMaker + "</t>";
_MissionMakerPic = _missionInfo select 11; //string missionmaker's tag.paa
_MissionMakerPic = "<img image="+"'"+ _MissionMakerPic+"'" +"/>";

_MissionSummary = _missionInfo select 4; //string
_Fullbrief = _missionInfo select 5;
_AdditionalInfos = _missionInfo select 6; //string

_stringFinal = 
_MissionParamsText + "<br/><br/>" +
"Cette mission a été créée par: " + _MissionMaker + " " + _MissionMakerPic
+ "<br/><br/>" +
"Mission: " + " " +
"<t color='#d65d42'>"+
_displayName + "</t>"
+ "<br/><br/>" +
"<t color='#d68242'>Résumé:</t>"
+ "<br/>" +
_MissionSummary
+ "<br/>" +
"<t color='#d68242'>Briefing:</t>"
+ "<br/>" +
_Fullbrief
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
////
_AdditionalPics = _missionInfo select 8;
player setVariable ["MRH_PDA_Pictures", _AdditionalPics];
player setVariable ["MRH_PDA_CurrentWatchedPic", 0];
FUNC(PDAPics);