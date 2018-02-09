class MRHSoldierPda
{
	idd=67877;
	movingenable=false;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Ciwydu)
////////////////////////////////////////////////////////

class MRHFond: RscPicture
{
	idc = 1200;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\tablet.paa";
	x = 0.1325 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.846563 * safezoneW;
	h = 0.994 * safezoneH;
};
class MRHSoldierInfoBackGround: RscPicture
{
	idc = 1201;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
};
class MRHCtrlGrp1SoldierInfo: RscControlsGroup
{
	idc = 2301;
	moving = true;
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
	class Controls
	{
		class MRHMSoldierInfosList: RscListbox
		{
			idc = 1500;
			moving = true;
			x = 0;
			y = 0;
			w = 0.137812 * safezoneW;
			h = 0.224 * safezoneH;
		};
	};
};

class MRHMissionSelectBackground: RscPicture
{
	idc = 1202;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.598 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
};
class MRHMissionSelectListBox: RscControlsGroup
{
	idc = 2302;
	moving = true;
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.598 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
	class Controls
	{
		class MRHMissionsList: RscListbox
		{
			idc = 1502;
			moving = true;
			onMouseButtonClick = "call MRH_fnc_PDARefreshBriefing;";
			x = 0;
			y = 0;
			w = 0.137812 * safezoneW;
			h = 0.224 * safezoneH;
		};
	};
};


class MRHMissionBriefingZonebackground: RscPicture
{
	idc = 1203;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.395 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.223125 * safezoneW;
	h = 0.49 * safezoneH;
};
class MRHMissionBriefingctrlGrp: RscControlsGroup
{
	idc = 2303;
	moving = true;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.223125 * safezoneW;
	h = 0.49 * safezoneH;
	class Controls
	{
		class MRHMissionBriefing: RscStructuredText
		{
			idc = 1100;
			moving = true;
			text = "briefing de mission"; //--- ToDo: Localize;
			x = 0;
			y = 0;
			w = 0.223125 * safezoneW;
			h = 0.49 * safezoneH;
		};
	};
};
/*
class MRHSelectorTitle: RscStructuredText///arenom
{
	idc = 1101;
	SizeEx = 0.5;
	text = "briefing de mission"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.223125 * safezoneW;
	h = 0.49 * safezoneH;
};
*/
class MRHMinimapBackGround: RscPicture
{
	idc = 1204;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
};
class MRHMinimap : RscMapControl
{
	idc = 1777;
	moving = true;
	//show = false;
	//onMouseButtonClick = "hint localize ""STR_MRH_NEWPOSHINT""; [_this] call MRH_fnc_ConvertCoordinates;";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.224 * safezoneH;
};
class MRHPicPreviewBackground: RscPicture
{
	idc = 1205;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.182 * safezoneH;
};
class MRHPicPreviewText: RscStructuredText
{
	idc = 1102;
	moving = true;
	text = "Documents photographiques."; //--- ToDo: Localize;
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.182 * safezoneH;
};
class MRHPicSelectBackgound: RscPicture
{
	idc = 1206;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.752 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHPreviousPicButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "<<"; //--- ToDo: Localize;
	action = "";//Todo
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.752 * safezoneH + safezoneY;
	w = 0.0328125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHNextPicButton: RscButton
{
	idc = 1601;
	moving = true;
	text = ">>"; //--- ToDo: Localize;
	action = ""; //ToDo
	x = 0.742812 * safezoneW + safezoneX;
	y = 0.752 * safezoneH + safezoneY;
	w = 0.02625 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHFullscreenPicButton: RscButton
{
	idc = 1602;
	moving = true;
	text = "Plein écran"; //--- ToDo: Localize;
	action = "";//ToDo
	x = 0.664063 * safezoneW + safezoneX;
	y = 0.752 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHCloseInterfaceButton: RscButton
{
	idc = 1603;
	moving = true;
	text = "Fermer"; //--- ToDo: Localize;
	action = "CloseDialog 0;"
	x = 0.670625 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.042 * safezoneH;
};
class MRHSoldierInfotext: RscStructuredText
{
	idc = 1103;
	moving = true;
	text = "Identité:"; //--- ToDo: Localize;

	x = 0.244062 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHSMissionSelectorText: RscStructuredText
{
	idc = 1104;
	moving = true;
	text = "Missions en cours"; //--- ToDo: Localize;
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHSMissionSelectedTitle: RscStructuredText
{
	idc = 1105;
	moving = true;
	text = "Nom de la mission"; //--- ToDo: Localize;
	x = 0.395 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.223125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHSMinimapTitle: RscStructuredText
{
	idc = 1106;
	moving = true;
	text = "Minimap"; //--- ToDo: Localize;
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHFullscreenZone: RscPicture
{
	idc = 1211;
	moving = true;
	show = false;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.2375 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.544687 * safezoneW;
	h = 0.56 * safezoneH;
};
class MRHFullscreenclosebutton: RscButton
{
	idc = 1604;
	moving = true;
	show = false;
	text = "X"; //--- ToDo: Localize;
	x = 0.7625 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.013125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHPreviousPicFullScreenText: RscButton
{
	idc = 1605;
	moving = true;
	show = false;
	text = "<<"; //--- ToDo: Localize;
	x = 0.2375 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.07 * safezoneH;
};
class MRHFullscreenNextPicButton: RscButton
{
	idc = 1606;
	moving = true;
	show = false;
	text = ">>"; //--- ToDo: Localize;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.07 * safezoneH;
};

class MRHFullScreenCaption: RscStructuredText
{
	idc = 1107;
	moving = true;
	show = false;
	text = "Legende"; //--- ToDo: Localize;
	x = 0.3425 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.315 * safezoneW;
	h = 0.07 * safezoneH;
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
