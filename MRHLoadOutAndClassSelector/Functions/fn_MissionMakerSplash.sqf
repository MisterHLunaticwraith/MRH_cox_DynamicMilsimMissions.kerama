/* 
this function displays the mission's name, mission Maker's  name and tag
*/
params ["_missionName","_missionMaker","_missionMakerPic"];
_text = "<t color='#d68242'>Mission:</t>"+" " + _missionName + " " + "<t color='#d68242'>Une mission par:</t>" +" "+ _missionMaker + "" + "<t size = '1'><img image='" + _missionMakerPic + "'/></t>";
_text = parsetext _text;

[_text,-1,0, 2 ,5, 0] spawn BIS_fnc_dynamicText;