/*
this function tests wether a mission can be launched, sets the button to open a popup 
*/
#include "MRH_components.hpp"

//// gets the indexvalue
 _index = lbCurSel 1500;
_selectedMission = lbData [1500, _index];
////
_NumberOfRunningMissions = FUNC(CountRunningMissions);
_allowedSimultaneousMissions = ["MRH_MaxAllowedSimultaneousMissions"] call cba_settings_fnc_get;
_isAlreadyRunning = [_selectedMission] FUNC(isRunningMission);


if (_NumberOfRunningMissions >= _allowedSimultaneousMissions) ExitWith {buttonSetAction [1600, "['isMax'] call MRH_fnc_ShowPopup;"];};
if (_isAlreadyRunning) ExitWith {buttonSetAction [1600, "['isRunning'] call MRH_fnc_ShowPopup;"];};
if (_NumberOfRunningMissions >=1) ExitWith {buttonSetAction [1600, "['isRunningButOK'] call MRH_fnc_ShowPopup;"];};
if (_NumberOfRunningMissions ==0) ExitWith {buttonSetAction [1600, "['isOK'] call MRH_fnc_ShowPopup;"];};
