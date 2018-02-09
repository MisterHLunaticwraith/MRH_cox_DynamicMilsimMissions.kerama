_credits = [
[ "C'etait", ["Operation","Heart","of Darkness"] ],
[ "", ["Angel, angel, what have I done?","I've faced the quakes, the wind, the fire","I've conquered country, crown, and throne","Why can't I cross this river?"] ],
[ "Une production", ["Team TGV","Team","Gamer Veteran"] ],
[ "", ["Pay no mind to the battles you've won","It'll take a lot more than rage and muscle","Open your heart and hands, my son","Or you'll never make it over the river"] ],
[ "Realisee par", ["Mr H.","https://www.facebook.com/MisterHGaming/","https://www.twitch.tv/lunaticwraith"] ],
[ "", ["Pay no mind to the battles you've won","It'll take a lot more than rage and muscle","Open your heart and hands, my son","Or you'll never make it over the river"] ],
[ "Map", ["G.O.S. Dariyah","par","Makhno"] ],
[ "", ["It'll take a lot more than words and guns","A whole lot more than riches and muscle","The hands of the many must join as one","And together we'll cross the river"] ],
[ "Mods", ["CBA3","Acre 2","Ace 3"] ],
[ "", ["It'll take a lot more than words and guns","A whole lot more than riches and muscle","The hands of the many must join as one","And together we'll cross the river"] ],
[ "Et", ["RHS USAF","RHS AFRF","Project Opfor","Cup Terrains Core","Cup Maps"] ],
[ "", ["It'll take a lot more than words and guns","A whole lot more than riches and muscle","The hands of the many must join as one","And together we'll cross the river"] ],
[ "Musique d'introduction", ["Aria et variation 1","Jean-Sebastien Bach","interpretee par Glenn Gould"] ],
[ "", ["It'll take a lot more than words and guns","A whole lot more than riches and muscle","The hands of the many must join as one","And together we'll cross the river"] ],
[ "Musique generique de fin", ["The Humbling River","par","Puscifer"] ],
[ "", ["Nature, nurture heaven and home","Sum of all, and by them, driven","To conquer every mountain shown"] ],
[ "Dans le role de la chair a canon", [profileName] ],
[ "", ["Nature, nurture heaven and home","Sum of all, and by them, driven","To conquer every mountain shown"] ],
[ "Scripts Ambient Battle", ["Aliascartoons"] ],
[ "", ["Braved the forests, braved the stone","Braved the icy winds and fire","Braved and beat them on my own"] ],
[ "Script camera", ["Aliascartoons","Modifie par Mr H.","et RedBelette"] ],
[ "", ["Braved the forests, braved the stone","Braved the icy winds and fire","Braved and beat them on my own"] ],
[ "Remerciements", ["La Team TGV","qui sert de cobaye pour mes missions"] ],
[ "©", ["Mr H.Gaming","2017"] ]
];
_layers = ["credits1" call bis_fnc_rscLayer,"credits2" call bis_fnc_rscLayer];
_delay = 5.5;
_duration = _delay * 1.5;
{
_title = [_x,0,""] call bis_fnc_paramin;
_names = _x select 1;
_text = format ["<t font='PuristaBold'>%1</t>",toUpper (_title)] + "<br />";
{
	 _text = _text + _x + "<br />";
} foreach _names;
_text = format ["<t size='0.8'>%1</t>",_text];
_index = _foreachindex % 2;
_layer = _layers select _index;
[_layer,_text,_index,_duration] spawn {
	disableserialization;
	_layer = _this select 0;
	_text = _this select 1;
	_index = _this select 2;
	_duration = _this select 3;
	_fadeTime = 0.5;
	_time = time + _duration - _fadeTime;
	_layer cutrsc ["RscDynamicText","plain"];
	_display = uinamespace getvariable ["BIS_dynamicText",displaynull];
	_ctrlText = _display displayctrl 9999;
	_ctrlText ctrlsetstructuredtext parsetext _text;
	_offsetX = 0.1;
	_offsetY = 0.3;
	_posW = 0.4;
	_posH = ctrltextheight _ctrlText + _offsetY;
	_pos = [
	 [safezoneX + _offsetX,safezoneY + _offsetY,_posW,_posH],
	 [safezoneX + safezoneW - _posW - _offsetX,safezoneY + safezoneH - _posH,_posW,_posH]
	] select _index;
	_ctrlText ctrlsetposition _pos;
	_ctrlText ctrlsetfade 1;
	_ctrlText ctrlcommit 0;
	_ctrlText ctrlsetfade 0;
	_ctrlText ctrlcommit _fadeTime;
	waituntil {time > _time};
	_ctrlText ctrlsetfade 1;
	_ctrlText ctrlcommit _fadeTime;
};
_time = time + _delay;
waituntil {time > _time};
} foreach _credits; 