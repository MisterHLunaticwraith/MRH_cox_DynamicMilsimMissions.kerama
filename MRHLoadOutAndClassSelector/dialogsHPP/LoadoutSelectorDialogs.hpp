class MRHLoadOutPicker
{
	idd=69853;
	movingenable=true;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Newuse)
////////////////////////////////////////////////////////

class MRHFond: RscPicture
{
	idc = 1200;
	moving = true;
	text = "MRHLoadOutAndClassSelector\paa\loadoutselectorbackground.paa";
	x = 0.2375 * safezoneW + safezoneX;
	y = 0.15 * safezoneH + safezoneY;
	w = 0.525 * safezoneW;
	h = 0.7 * safezoneH;
};
class MRHCancelButton: RscButton
{
	idc = 1600;
	moving = true;
	text = "Annuler"; //--- ToDo: Localize;
	action = "closedialog 0";
	x = 0.545937 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.065625 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHAcceptButton: RscButton
{
	idc = 1601;
	moving = true;
	text = "Choisir cet équipement"; //--- ToDo: Localize;
	x = 0.618125 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.13125 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHTitle: RscStructuredText
{
	idc = 1100;
	moving = true;
	text = "Choisissez votre équipement"; //--- ToDo: Localize;
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.23625 * safezoneW;
	h = 0.042 * safezoneH;
};

class MRHLoadoutRequierementsText: RscStructuredText
{
	idc = 1101;
	moving = true;
	text = "Cet équipement requiert:"; //--- ToDo: Localize;
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.295312 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHLoadoutName: RscStructuredText
{
	idc = 1102;
	moving = true;
	x = 0.506562 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.249375 * safezoneW;
	h = 0.042 * safezoneH;
};

class MRHCtrlGrpLoadoutsList: RscControlsGroup
{
	idc = 2300;
	moving = true;
	x = 0.244062 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.242812 * safezoneW;
	h = 0.574 * safezoneH;

	class Controls
	{
		class MRHLoadOutsList: RscListbox
		{
			idc = 1500;
			moving = true;
			x = 0;
			y = 0;
			w = 0.242812 * safezoneW;
			h = 0.574 * safezoneH;
			onMouseButtonClick = "call MRH_fnc_RefreshLoadOutDetails;";
		};
	};
};

class MRHLoadoutDetailsCtrlGrp: RscControlsGroup
{
	idc = 2301;
	moving = true;
	x = 0.506562 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.249375 * safezoneW;
	h = 0.574 * safezoneH;
	class Controls
	{
		class MRHLoadoutDetailsList: RscListboxSPECIAL
		{
			idc = 1501;
			moving = true;
			x = 0;
			y = 0;
			w = 0.249375 * safezoneW;
			h = 0.574 * safezoneH;
		};
	};
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};