///Sécurité engagée au début de la mission
		if (!isDedicated) then 
{

	"" spawn 
	{

		sleep 0.01;
		
		if (currentWeapon player != "") then {
		
			[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
		
		};
		
		if ("ACE_EarPlugs" in items player) then {
		
			[player] call ace_hearing_fnc_putInEarPlugs;
			
		};
		
	};
};