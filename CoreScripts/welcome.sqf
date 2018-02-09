//[] execVM "welcome.sqf";

sleep 15;

_clickableLink = parseText "<t colorLink='#ff0000'><a href='http://www.teamtgv.com/'>TeamTGV</a></t>";
_clickableLink2 = parseText "<t colorLink='#ff0000'><a href='ts3server://ts39.nitrado.net:12100/'>TeamSpeak</a></t>";
_clickableLink3 = parseText "<t colorLink='#ff0000'><a href='https://www.twitch.tv/lunaticwraith'>Twitch Mr.H</a></t>";
_clickableLink4 = parseText "<t colorLink='#ff0000'><a href='https://www.twitch.tv/wtf_redbelette'>Twitch RedBelette</a></t>";
_separator1 = parseText "<br />______________________________________<br />";
_separator2 = parseText "<br /><br />"; 
_txt = composeText 
[
"Bienvenue sur le serveur de la Team TGV",
_separator1,
"Merci de rester courtois et fairplay.",
_separator2,
"Pour un meilleur fonctionnement du serveur, ne laissez pas trainer vos objets au sol, laissez les dans l'arsenal ou dans un inventaire.",
_separator2,  
"L'utilisation de teamspeak est obligatoire pour ACRE2",
_separator2,
_clickableLink2, ": ts39.nitrado.net:12100",
_separator2,
"Il est interdit de parler dans le chat, sauf pour rapporter un problème technique ou reporter un mauvais comportement.",
_separator1,
_clickableLink,
_separator1,
_clickableLink3,
_separator2,
_clickableLink4
 ]; 

"" hintC _txt;
