class MRHSimpleSelector
{
	idd=69851;
	movingenable=true;
	
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Musabu)
////////////////////////////////////////////////////////


class MRHBackGround: RscPicture
{
	idc = 1200;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\simpleselector.paa";
	x = 0.309687 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.269062 * safezoneW;
	h = 0.364 * safezoneH;
};
class MRHCancelButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "Annuler"; //--- ToDo: Localize;
	action = "closedialog 0";
	x = 0.329375 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHConfirmButton: RscButton
{
	idc = 1601;
	moving = true;
	text = "Valider"; //--- ToDo: Localize;
	x = 0.467187 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHCtrlGrp: RscControlsGroup
{
	idc = 2300;
	moving = true;
	x = 0.322812 * safezoneW + safezoneX;
	y = 0.248 * safezoneH + safezoneY;
	w = 0.249375 * safezoneW;
	h = 0.294 * safezoneH;
	class Controls
	{
		class MRHListBox: RscListbox
		{
			idc = 1500;
			moving = true;
			x = 0;
			y = 0;
			w = 0.249375 * safezoneW;
			h = 0.294 * safezoneH;
		};
	};
};
class MRHTitleText: RscStructuredText
{
	idc = 1100;
	moving = true;
	text = "dummytext"; //--- ToDo: Localize;
	x = 0.322812 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.150937 * safezoneW;
	h = 0.028 * safezoneH;
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
/////FSJOINMENU////////////////////////////////////////
///////////////////////////////////////////////////////


class MRHJoinSpecOps
{
	idd=69852;
	movingenable=true;
	
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Hapovo)
////////////////////////////////////////////////////////



class MRHFond: RscPicture
{
	idc = 1200;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\fond.paa";
	x = 0.329375 * safezoneW + safezoneX;
	y = 0.29 * safezoneH + safezoneY;
	w = 0.321562 * safezoneW;
	h = 0.42 * safezoneH;
};
class MRHFrame: RscFrame
{
	idc = 1800;
	moving = true;
	text = "Engagez vous!"; //--- ToDo: Localize;
	x = 0.329375 * safezoneW + safezoneX;
	y = 0.29 * safezoneH + safezoneY;
	w = 0.321562 * safezoneW;
	h = 0.42 * safezoneH;
};

class MRHSpecOpsPic: RscPicture
{
	idc = 1201;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\specopslogo.paa";
	x = 0.408125 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.28 * safezoneH;
};


class MRHwillyoujoin: RscStructuredText
{
	idc = 1100;
	moving = true;
	text = "Rejoindre les forces spéciales?"; //--- ToDo: Localize;
	x = 0.362187 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.242812 * safezoneW;
	h = 0.042 * safezoneH;
};

class MRHSpecCounts: RscStructuredText
{
	idc = 1101;
	moving = true;
	text = "Les forces spéciales comptent actuellement ... membre(s) sur ... place(s) disponibles."; //--- ToDo: Localize;
	x = 0.36875 * safezoneW + safezoneX;
	y = 0.542 * safezoneH + safezoneY;
	w = 0.242812 * safezoneW;
	h = 0.084 * safezoneH;
};

class MRHCancelButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "Annuler"; //--- ToDo: Localize;
	x = 0.3425 * safezoneW + safezoneX;
	y = 0.668 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
	action = "closedialog 0";
};
class MRHLeaveButton: RscButton
{
	idc = 1601;
	moving = true;
	show = false;
	text = "Quitter les FS"; //--- ToDo: Localize;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.668 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHFSJoinButton: RscButton
{
	idc = 1602;
	moving = true;
	text = "Rejoindre les FS"; //--- ToDo: Localize;
	x = 0.519688 * safezoneW + safezoneX;
	y = 0.668 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
