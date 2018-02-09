params ["_input"];
_array = str _input;
_step1 = [_array, "[","{"] call CBA_fnc_replace;
_step2 = [_step1, "]","}"] call CBA_fnc_replace;
copytoclipboard  _step2;
hint "conversion copiée dans le clipboard";
_step2


/*
_array =  str _input;
_step1 = _array splitString "[" joinstring "{";
_step2 = _step1 splitString "]" joinstring "}";
copytoclipboard  _step2;
hint "conversion copiée dans le clipboard";

*/