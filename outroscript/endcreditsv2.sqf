_duree = _this select 0;

_includeAI 	= 0;//0->only players, 1->both AI and players, 2->playable units only (includes player and some AI)
_rank 		= true;//true->display unit's rank		false->hide unit's rank
_role 		= true;//true->display unit's role		false->hide unit's role
_strRank 		= "";//will contain unit's rank
_strRole 		= "";//will contain unit's role
_strGrp 		= "";//will contain unit's group name
_strColorGrp 	= "";//will contain unit's group color
_strFinal 		= "";//will contain final string to be displayed
_oldGrp 		= grpNull;//group of last checked unit
_newGrp 		= grpNull;//group of current unit
_unitsArr 		= [];//will contain all units that have to be processed


switch(_includeAI) do {
	case 0:{//only players
		{
			if(isPlayer _x) then {
				_unitsArr = _unitsArr + [_x];
			};
		}forEach allUnits;
	};
	case 1:{//both AI and players
		_unitsArr = allUnits;
	};
	case 2:{//only playable units
		if(isMultiplayer) then {
			_unitsArr = playableUnits;
		} else {
			_unitsArr = switchableUnits;
		};
	};
	default{
		_unitsArr = allUnits;
	};
};

{//forEach
	if(side _x == side player) then {
		_newGrp = group _x;
		_strGrp = "";
		
		if(_rank) then {
			switch(rankID _x) do {
				case 0:{
					_strRank = "Simple soldat ";
				};
				case 1:{
					_strRank = "Caporal ";
				};
				case 2:{
					_strRank = "Sergent ";
				};
				case 3:{
					_strRank = "Lieutenant ";
				};
				case 4:{
					_strRank = "Capitaine ";
				};
				case 5:{
					_strRank = "Major ";
				};
				case 6:{
					_strRank = "Colonel ";
				};
				default{
					_strRank = "Simple soldat ";
				};
			};
		};

		if(_role) then {
			_strRole = " - " + getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
		};
		
		if((_x getVariable "displayName") != "") then {
			_strRole = " - " +(_x getVariable "displayName");
		};

		if(_newGrp != _oldGrp) then {
			_strGrp = "£";
			
			if((_this find ("Color"+str(side _x)))>-1) then {
				if(count _this > ((_this find ("Color"+str(side _x))) + 1)) then {
					_strColorGrp = _this select ((_this find ("Color"+str(side _x))) + 1);
				} else {
					hint "Skippy-Roster - Missing Param";
					_strColorGrp = "";
				};
			} else {
				switch (side _x) do {
					case EAST:{
						_strColorGrp = "'#990000'";
					};
					case WEST:{
						_strColorGrp = "'#0066CC'";
					};
					case RESISTANCE:{
						_strColorGrp = "'#339900'";
					};
					case CIVILIAN:{
						_strColorGrp = "'#990099'";
					};
				};
			};
			
			if(((group _x) getVariable "color") != "") then {
				_strColorGrp = (group _x) getVariable "color";
			};
		};


		_strFinal =   _strFinal +_strGrp + _strRank + name _x + _strRole + "<br/>" ;

		_oldGrp = group _x;
	};
}forEach _unitsArr;

_title = _this select 1;
_makername = _this select 2;
_thanks = _this select 3;
_extratext =  _this select 4; //if(_extratext == objNull) then { _extratext = "";};
_year = _this select 5;

_strprecredit ="<t font = 'PuristaMedium'>" + "C'était: <br/>" + _title +"<br/>" + "Une mission proposée par:<br/>" + _makername +"<br/>" + "Entièrement réalisée pour Arma III <br/>" + "Une production Team TGV<br/>" + "Avec les mods: <br/> CBA 3 <br/> Ace 3 <br/> Acre 2 <br/> RHS Escalation <br/> Project Opfor <br/> Cup Terrains <br/> Cup Terrains core<br/><br/> Remerciements:<br/>" + "<br/>"  + _thanks +"<br/>" + "<br/>" + _extratext + "<br/>" + "Avec dans leurs rôles respectifs:<br/>" + "</t>";

_strpostcredit ="<t font = 'PuristaMedium'>" + "<br/><br/><br/>" + "© " + _makername + "<br/>" + _year + "</t>" + "<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>";
//_strFinal = _strprecredit + _strFinal + _strpostcredit;

test = _strfinal splitstring "£";
//copytoclipboard _test;
part1 = [_strprecredit,-1,-1,_duree ,-1, -1] spawn BIS_fnc_dynamicText;
waituntil {scriptdone part1};
sleep 1;
part2 = [] spawn {{["<t font = 'PuristaMedium'><t size = '1'>" + _x + "</t>",-1, -1,1 ,2, 0] spawn BIS_fnc_dynamicText; sleep 5;} forEach test;};
waituntil {scriptdone part2};
part3 = [_strpostcredit,-1,-1,_duree ,-1, -1] spawn BIS_fnc_dynamicText;
waituntil {scriptdone part3};

//[_strFinal,-1,-1,_duree ,-1] spawn BIS_fnc_dynamicText; // trouver le cap et réécrire la fonction
/*
    Number: X coordinates (optional)

    Number: Y coordinates (optional)

    Number: Duration (Optional)

    Number: FadeIn time (Optional)

    Number: Delta Y, Text will move up or down depending on value (Optional)

    Number: Resource layer (Optional)
*/
