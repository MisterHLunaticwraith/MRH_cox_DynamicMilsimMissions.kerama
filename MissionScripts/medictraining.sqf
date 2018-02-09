deleteVehicle dummy;
_grp = createGroup west;
dummy = _grp createUnit ["C_man_polo_5_F", getPos mat , [], 0, "CAN_COLLIDE"];
dummy switchMove "AinjPpneMstpSnonWnonDnon";
[dummy, "body", 0.3, objNull, "vehiclecrash", 0.3, objNull] call ace_medical_fnc_handleDamage;