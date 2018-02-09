params ["_unit"];
_test = _unit getVariable "MRHUnitClass";
if !( _test == "RankedOfficer" or _test == "HeliPilot" or _test == "JetPilot") then {hint "Seuls les pilotes et le colonel sont autorisés à entrer dans la tour de contrôle"; _unit setPos (position retour);};