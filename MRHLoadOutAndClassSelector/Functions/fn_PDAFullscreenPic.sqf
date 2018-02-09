#define CTRLGRP [1211,1604,1605,1606,1107]
{ctrlShow [_x, true];} forEach CTRLGRP;
buttonSetAction [1604, "
{ctrlShow [_x, false];} forEach [1211,1604,1605,1606,1107];
call MRH_fnc_PDAPics;
"];