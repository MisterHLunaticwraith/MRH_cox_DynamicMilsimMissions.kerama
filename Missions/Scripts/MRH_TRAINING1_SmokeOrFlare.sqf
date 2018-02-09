_sstime = date call BIS_fnc_sunriseSunsetTime;
_sunrise = _sstime select 0;
_sunset = _sstime select 1;
_missiontime = daytime;
_isNight = false;

//nuit
if ((_missiontime < _sunrise) or (_missiontime > _sunset))
then {_isNight = true;};

if (_isNight) then {
[] spawn {
_duration = 10;
while {_duration > 1} do {
_chemlight1= "F_Signal_Green" createVehicle (position MRH_TRAINING1_LandingTarget);
_chemlight1 attachto [MRH_TRAINING1_LandingTarget, [0,0,0]];
_duration = _duration- 1;
sleep 10;
};
}; 

_chemlight2= "Chemlight_green" createVehicle (position MRH_TRAINING1_LandingTarget);
_chemlight2 attachto [MRH_TRAINING1_LandingTarget, [2,0,0]]; 
_chemlight3= "Ahemlight_green" createVehicle (position MRH_TRAINING1_LandingTarget);
_chemlight3 attachto [MRH_TRAINING1_LandingTarget, [-2,0,0]]; 

} else {
_smokeRedgear = "SmokeShellGreen" createVehicle (position MRH_TRAINING1_LandingTarget);
_smokeRedgear attachto [MRH_TRAINING1_LandingTarget, [0,0,0]]; };

