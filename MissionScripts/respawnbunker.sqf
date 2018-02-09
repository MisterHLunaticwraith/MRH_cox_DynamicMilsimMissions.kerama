params ["_unit"];
_check = _unit getVariable "hasDied";
if (_check) then { _unit setPos (position deadplace); hint "Vous êtes morts et vous ne pouvez pas quitter ce hangar";} else { _unit setPos (position notdeadplace); hint "Ce hangar est le lieu des morts, vous n'avez rien à y faire";};