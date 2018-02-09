// F3 Functions

class F // Defines the "owner"
{
	class common // category
	{
		file = "CoreScripts\common";
		class processParamsArray{preInit = 1; postInit=1;};
		class nearPlayer{};
	};
	class mpEnd
	{
		file = "CoreScripts\mpEnd";
		class mpEnd{};
		class mpEndReceiver{};
	};


	class zeus
	{
		file = "CoreScripts\zeus";
		class zeusInit{};
		class zeusAddAddons{};
		class zeusAddObjects{};
	};

	class safeStart
	{
		file = "CoreScripts\safeStart";
		class safety{};
	};


};