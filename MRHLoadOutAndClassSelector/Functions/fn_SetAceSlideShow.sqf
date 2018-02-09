/*
this function adds Mission Pics to ace slideshow objects defined in CfgMRHSlideShowObjects
*/
#include "MRH_components.hpp"
params ["_missionName", "_MissionPics"];

_pic = [];
_captions = [];
{
_pic pushBack (_x select 0);
_captions pushBack (_x select 1);
} forEach _MissionPics;



_allSlideGroups = getarray (missionconfigfile>>"CfgMRHSlideShowObjects">>"allSlideGroups");

{
_group = _x;

_ScreenObjectsConvert = [];
_RemoteObjectsConvert = [];
_ScreenObjects = getarray (missionconfigfile>>"CfgMRHSlideShowObjects">>_group>>"DisplayObjects");
_RemoteObjects = getarray (missionconfigfile>>"CfgMRHSlideShowObjects">>_group>>"RemoteObjects");

_step1OBJ = {private "_result"; _result = [_x] FUNC(ToText); _ScreenObjectsConvert pushBack _result;} forEach _screenObjects;
_step1RMT = {private "_result"; _result = [_x] FUNC(ToText); _RemoteObjectsConvert pushBack _result;} forEach _RemoteObjects;

[_ScreenObjectsConvert, _RemoteObjectsConvert, _Pic, _captions, 0, _missionName] call ace_slideshow_fnc_createSlideshow;


} forEach _allSlideGroups;
