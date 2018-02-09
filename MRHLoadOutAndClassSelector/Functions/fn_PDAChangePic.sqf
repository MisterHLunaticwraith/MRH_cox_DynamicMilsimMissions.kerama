/*

*/
params ["_operation"];
_piclist = player getVariable 'MRH_PDA_Pictures';
_howManyPics = count _piclist;
_selectedPic = player getVariable 'MRH_PDA_CurrentWatchedPic';
_maxPics = _howManyPics -1;

switch (true) do {
case (_operation == "minus") : {

if (_selectedPic <= 0) ExitWith{};
_selectedPic = _selectedPic -1;
player setVariable ["MRH_PDA_CurrentWatchedPic", _selectedPic];
};

case (_operation == "plus") : {

if (_selectedPic >= _maxPics) ExitWith{};
_selectedPic = _selectedPic +1;
player setVariable ["MRH_PDA_CurrentWatchedPic", _selectedPic];
};




///endswitch
};
call MRH_fnc_PDAPics;