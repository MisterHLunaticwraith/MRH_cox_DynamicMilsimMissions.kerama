_allUavScreens = [];
_allentities = entities [["ThingX"], [], false, false];
{_check = _x getVariable "MRH_isUavFeedScreen"; if (_check) then {_allUavScreens pushBackUnique _x;};} forEach _allentities;
{[_x] call MRH_fnc_setUavPicturePip;} forEach _allUavScreens;