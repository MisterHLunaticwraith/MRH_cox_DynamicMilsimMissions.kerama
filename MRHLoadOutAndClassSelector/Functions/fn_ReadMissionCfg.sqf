/* 
this function reads the mission cfg and returns an array
eg:
_missionInfos = ["TestMission"] call MRH_fnc_ReadMissionCfg;
_displayName = _missionInfos select 0; //String
_MissionComp = _missionInfos select 1; // string composition.sqe to be spawned
_MissionTimeAndDate = _missionInfos select 2; // array of numbers to be used with setDate
_RecommendedPlayersNumber = _missionInfos select 3; // Integer
_MissionSummary = _missionInfos select 4; //string
_MissionBriefing = _missionInfos select 5; //string
_AdditionalInfos = _missionInfos select 6; //string
_ExtraInitScript = _missionInfos select 7; //string to be used with ExecVM
_AdditionalPics = _missionInfos select 8; //array of arrays strings paths to the pictures + captions
_CurrentMissionVar = _missionInfos select 9; //string to be used with setVariable
_MissionMaker = _missionInfos select 10; // string mission maker prettyname
_MissionMakerPic = _missionInfos select 11; //string missionmaker's tag.paa
_Weather = _missionInfos select 12; // ARRAY of 5 numbers defining weather conditions 
_IndeAllegiance = _missionInfos select 13; //number defines the allegiance of indeside
*/

params ["_mission"];


_displayName = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"Displayname");
_MissionComp = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionComp");
_MissionTimeAndDate = getarray (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionTimeAndDate");
_RecommendedPlayersNumber = getnumber (missionconfigfile>>"CfgMRHMissions">>_mission>>"RecommendedPlayersNumber");
_MissionSummary = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionSummary");
_MissionBriefing = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionBriefing");
_AdditionalInfos = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"AdditionalInfos");
_ExtraInitScript =  gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"ExtraInitScripts");
_AdditionalPics = getarray (missionconfigfile>>"CfgMRHMissions">>_mission>>"AdditionalPics");
_CurrentMissionVar = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"CurrentMissionVar");
_MissionMaker = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionMaker");
_MissionMakerPic = gettext (missionconfigfile>>"CfgMRHMissions">>_mission>>"MissionMakerPic");
_Weather = getarray (missionconfigfile>>"CfgMRHMissions">>_mission>>"WeatherConditions");
_IndeAllegiance = getnumber (missionconfigfile>>"CfgMRHMissions">>_mission>>"IndeAllegiance");

_returnvalue = [_displayName, _MissionComp,_MissionTimeAndDate, _RecommendedPlayersNumber, _MissionSummary, _MissionBriefing, _AdditionalInfos, _ExtraInitScript, _AdditionalPics, _CurrentMissionVar, _MissionMaker, _MissionMakerPic, _Weather, _IndeAllegiance];

///returns:
_returnvalue