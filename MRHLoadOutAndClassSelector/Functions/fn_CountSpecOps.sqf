/*
counts how many players are specops
returns number
*/
#include "MRH_components.hpp"
//hint "fired";
_result = 0;
{
_check =[_x] FUNC(isSpecOps);
if (_check) then { _result = _result +1;}
} forEach allPlayers;
_result