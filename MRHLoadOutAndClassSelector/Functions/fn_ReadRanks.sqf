/*

reads missionconfigfiles and returns ARRAY 
for the specified rank
example 
_rankinfo = ["PRIVATE"] call MRH_fnc_ReadRanks;
Returns:
Displayname: _rankinfo select 0 STRING
Displaypicture: _rankinfo select 1 STRING path to rankpicture.paa
MaxAllowedNumberStringName: _rankinfo select 2 STRING
DefaultMaxAllowedNumber: _rankinfo select 3 INTEGER

*/
params ["_rank"];
_displayName = gettext (missionconfigfile>>"CfgMRHRanksExtraInfo">>_rank>>"DisplayName");
_displayPicture = gettext (missionconfigfile>>"CfgMRHRanksExtraInfo">>_rank>>"DisplayPicture");
_maxAllowedNumberStringName= gettext (missionconfigfile>>"CfgMRHRanksExtraInfo">>_rank>>"MaxAllowedNumberStringName");
_defaultMaxAllowedNumber = getnumber (missionconfigfile>>"CfgMRHRanksExtraInfo">>_rank>>"DefaultMaxAllowedNumber");

//return value:
[_displayName,_displayPicture,_maxAllowedNumberStringName,_defaultMaxAllowedNumber]