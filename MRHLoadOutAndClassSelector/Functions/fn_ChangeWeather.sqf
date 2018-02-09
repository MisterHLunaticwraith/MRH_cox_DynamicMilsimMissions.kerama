/* 
this function changes the weather
params is an array of numbers, for each param the value ranges from 0 (no rain etc.) to 1 ( biblical flood ^^)
[_rain, _fog, _waves, _lightnings, _overcast]
eg
[[1,1,1,1,1]] call MRH_fnc_ChangeWeather; // will call the hell of a storm
*/
params ["_weather"];
[_weather] spawn {
params ["_weather"];
//hint str _weather;
_rain = _weather select 0;
_fog = _weather select 1;
_waves = _weather select 2;
_lightnings = _weather select 3;
_overcast = _weather select 4;
0 setRain _rain;
sleep 1;
0 setFog _fog;
sleep 1;
0 setWaves _waves;
sleep 1;
0 setLightnings _lightnings;
sleep 1;
0 setOvercast _overcast;
sleep 1;
skipTime 1; 
skipTime -1;
forceWeatherChange;
};