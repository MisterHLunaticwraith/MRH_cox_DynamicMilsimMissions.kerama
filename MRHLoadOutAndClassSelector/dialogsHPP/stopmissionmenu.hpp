class MRHAdminMissionCancel
{
	idd=69854;
	movingenable=true;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Bufowe)
////////////////////////////////////////////////////////

class MRHFond: RscPicture
{
	idc = 1200;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\window.paa";
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.321562 * safezoneW;
	h = 0.336 * safezoneH;
};
class MRHCtrlGrp: RscControlsGroup
{
	idc = 2300;
	moving = true;
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.336 * safezoneH;
	class Controls
	{
		class MRHListBox: RscListbox
		{
			idc = 1500;
			moving = true;
			x = 0;
			y = 0;
			w = 0.144375 * safezoneW;
			h = 0.336 * safezoneH;
			onMouseButtonClick = "call MRH_fnc_RefreshAdminMissionClose;";
		};
	};
};

class MRHText: RscStructuredText
{
	idc = 1100;
	moving = true;
	x = 0.257187 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.301875 * safezoneW;
	h = 0.266 * safezoneH;
};
class MRHCancelButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "Annuler"; //--- ToDo: Localize;
	action = "closedialog 0;";
	x = 0.270313 * safezoneW + safezoneX;
	y = 0.612 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.042 * safezoneH;
};
class MRHStopMissionButton: RscButton
{
	idc = 1601;
	moving = true;
	text = "Mettre fin à la mission selectionnée"; //--- ToDo: Localize;
	x = 0.342499 * safezoneW + safezoneX;
	y = 0.612 * safezoneH + safezoneY;
	w = 0.203437 * safezoneW;
	h = 0.042 * safezoneH;
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
