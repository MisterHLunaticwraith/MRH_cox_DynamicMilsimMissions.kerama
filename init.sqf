//================CORE=SCRIPTS===========nepasdesactiver====///
//Les codes suivants sont executés au début de la mission.
///Sécurité engagée au début de la mission
[] execVM "CoreScripts\securite.sqf";
// Crée les variables
if(isServer) then {
	f_script_setLocalVars = [] execVM "CoreScripts\common\f_setLocalVars.sqf";
};
// desactive la sauvegarde
enableSaving [false, false];
//mute les voix automatiques des unitésjouables
{_x setSpeaker "NoVoice"} forEach playableUnits;
//execute le safesatrt
[] execVM "CoreScripts\safeStart\f_safeStart.sqf";
//générelebriefing
f_script_briefing = [] execVM "briefing.sqf";
//génére les orbatnotes
[] execVM "CoreScripts\briefing\f_orbatNotes.sqf";
//générelesloadoutnotes
[] execVM "CoreScripts\briefing\f_loadoutNotes.sqf";
//génére les guides TGV
0= execVM "CoreScripts\briefing\guidesetinfos.sqf";
//InitialiseLesVariablesDudecomptedesmorts

//========FIN=CORE=SCRIPTS================


//=============ScriptsSpécifiquesAlaMission=====
//Initialiser les scripts de mission cidessous.

 