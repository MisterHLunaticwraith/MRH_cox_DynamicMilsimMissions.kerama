class MRHMissionPicker
{
	idd=69877;
	movingenable=false;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Visypo)
////////////////////////////////////////////////////////

class MRHFond: RscPicture
{
	idc = 1200;
	text = "MRHLoadOutAndClassSelector\paa\laptop.paa";
	x = -0.00531249 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 1.00406 * safezoneW;
	h = 1.008 * safezoneH;
};
class MRHSelectorTitle: RscStructuredText
{
	idc = 1100;
	text = "Selecteur de mission"; //--- ToDo: Localize;
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHFond1: RscPicture
{
	idc = 1201;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.434 * safezoneH;
};
class MRHCtrlGrp1MissionsList: RscControlsGroup
{
	idc = 2300;
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.434 * safezoneH;
	class Controls
	{
		class MRHMissionsList: RscListbox
		{
			idc = 1500;
			x = 0;
			y = 0;
			w = 0.21 * safezoneW;
			h = 0.434 * safezoneH;
			onMouseButtonClick = "call MRH_fnc_RefreshMissionDetails;";
		};
	};
};


class MRHAcceptButton: RscButton
{
	idc = 1600;
	text = "Choisir cette mission"; //--- ToDo: Localize;
	x = 0.605 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.13125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHCancelButton: RscButton
{
	idc = 1601;
	text = "Quitter"; //--- ToDo: Localize;
	action = "CloseDialog 0";
	x = 0.545937 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHMissionName: RscStructuredText
{
	idc = 1101;
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHFond2: RscPicture
{
	idc = 1202;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.042 * safezoneH;
};
class MRHMissionTimeAndDateAndPlayers: RscStructuredText
{
	idc = 1102;
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.042 * safezoneH;
};
class MRHFond3: RscPicture
{
	idc = 1203;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.126 * safezoneH;
};
class MRHCtrlGrp2MissionSummary: RscControlsGroup
{
	idc = 2301;
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.126 * safezoneH;
	class Controls
	{
		class MRHMissionSummary: RscStructuredText
		{
			idc = 1103;
			x = 0;
			y = 0;
			w = 0.255937 * safezoneW;
			h = 0.126 * safezoneH;
		};
	};
};
class MRHFond4: RscPicture
{
	idc = 1204;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.36 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.196 * safezoneH;
};
class MRHCtrlGrp3MissionPics: RscControlsGroup
{
	idc = 2302;
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.36 * safezoneH + safezoneY;
	w = 0.255937 * safezoneW;
	h = 0.196 * safezoneH;
	class Controls
	{
		class MRHMissionPics: RscStructuredText
		{
			idc = 1104;
			x = 0;
			y = 0;
			w = 0.255937 * safezoneW;
			h = 0.196 * safezoneH;
		};
	};
};
/////popup
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Dilifa)
////////////////////////////////////////////////////////

class MRHPopUpWindow: RscPicture
{
	idc = 1205;
	show = false;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.36875 * safezoneW + safezoneX;
	y = 0.234 * safezoneH + safezoneY;
	w = 0.2625 * safezoneW;
	h = 0.224 * safezoneH;
};

class MRHPopUpBackButton: RscButton
{
	idc = 1610;
	show = false;
	text = "Retour"; //--- ToDo: Localize;
	x = 0.381875 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHPopUpAccept: RscButton
{
	idc = 1611;
	show = false;
	text = "Continuer tout de même"; //--- ToDo: Localize;
	x = 0.506562 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHPopUpText: RscStructuredText
{
	idc = 1111;
	show = false;
	x = 0.375312 * safezoneW + safezoneX;
	y = 0.262 * safezoneH + safezoneY;
	w = 0.249375 * safezoneW;
	h = 0.154 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
