/*
FUNC(ChooseRank);
execVM CFGPATH(test.sqf);
PAAPATH(test.paa);
*/
#define ROOTPATH "MRHLoadOutAndClassSelector
#define CFGPATH(ARG) ROOTPATH\cfgHPP\##ARG"
#define PAAPATH(ARG) ROOTPATH\paa\##ARG"

#define FUNC(ARG) call MRH_fnc_##ARG