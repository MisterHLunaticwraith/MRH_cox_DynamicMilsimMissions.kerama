params ["_received"];
copytoclipboard str _received;
_uav = _received getVariable "MRH_CreatedUav";
_test = _uav getVariable "isMRHCreatedUav";
if (isNil "_uav" or !_test) ExitWith {systemchat "Pas de drone trouvé, veuillez créer un drone";};
player action ["SwitchToUAVDriver",_uav];