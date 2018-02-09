///nul= execVM "introscript\credits.sqf";
/////script fait pour durer 1m30
//sleep 8; //temps avant que les crédits ne demarrent
_onScreenTime =2; //defaut 10


_role1 = "Une mission proposée par"; //In yellow
_role1names = ["Mr H."]; //In white
_role2 = "Entierement realisée";
_role2names = ["Pour Arma III"]; 
_role3 = "Avec les mods";
_role3names = ["CBA3 / Acre 2/ Ace3 "];
_role4 = "Et";
_role4names = ["RHS Escalation / Project Opfor "];
_role5 = "Avec la participation de";
_role5names = ["La team TGV"];
_texte= "Et dans le role de ";
_role = player getVariable "displayname";
_role6 = _texte + _role; //In yellow
_role6names = [profileName]; //In white

 
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='1' color='#878681' align='right' font = 'PuristaLight'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='2' color='#878681' align='right' font = 'PuristaLight'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];
//=======texte de nom de mission
