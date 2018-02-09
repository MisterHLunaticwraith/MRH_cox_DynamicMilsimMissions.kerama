/*
applies mission pictures to the pda
*/

//player setVariable ["MRH_PDA_Pictures", _AdditionalPics];
//player setVariable ["MRH_PDA_CurrentWatchedPic, 0];
_piclist = player getVariable "MRH_PDA_Pictures";
_selectedPic = player getVariable "MRH_PDA_CurrentWatchedPic";
//_howManyPics = count _piclist;
//_selectedPic = _howManyPics - (_howManyPics + _selectedPic);
//systemchat str _selectedPic;

/////////////
_picFinal = _piclist select _selectedPic;
_ctrlPicSmall = ((finddisplay 67877) displayCtrl 1102);
_picToShow = _picFinal select 0;
_PicCaption = _picFinal select 1;
_PicSmall = "<t size = '5'><img image="+"'"+ _picToShow + "'" +"/></t>";
_ctrlPicSmall ctrlSetStructuredText parsetext _PicSmall;
/////////////
buttonSetAction [1600, "
['minus'] call MRH_fnc_PDAChangePic;
"];


buttonSetAction [1601, "
['plus'] call MRH_fnc_PDAChangePic;
"];

buttonSetAction [1602, "
call MRH_fnc_PDAFullscreenPic;
"];
_ctrlPicBig = ((finddisplay 67877) displayCtrl 1211);
_ctrlCaption =  ((finddisplay 67877) displayCtrl 1107);

_ctrlPicBig ctrlSetText _picToShow;
_ctrlCaption ctrlSetStructuredText parsetext _PicCaption;
//if (ctrlShown _ctrlPicBig) then { _ctrlPicBig ctrlSetText _picToShow;};

buttonSetAction [1605, "
['minus'] call MRH_fnc_PDAChangePic;
"];


buttonSetAction [1606, "
['plus'] call MRH_fnc_PDAChangePic;
"];