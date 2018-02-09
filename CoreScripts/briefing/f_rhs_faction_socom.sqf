// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Mr H.
<br/>
Twitch: https://www.twitch.tv/lunaticwraith
<br/>
La team TGV et Bohemia Interactive ! Tous ceux qui me servent de cobayes pour tester mes missions.
<br/>
Team TGV : http://www.jeux-coop.com/TGV/site/
<br/>

<br/>

<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Vos hommes sont équipés de lunettes de vision nocturne de dernière génération ainsi que de fusils d’assaut Mk18 Mod 1 avec silencieux et pointeurs lasers.
<br/>
Vous avez à votre disposition un hélicoptère de type UH-60 M ainsi que deux voitures de modèle UAZ-3151 qui se feront parfaitement couleur locale.
<br/>

"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>ORDRES DU COMMANDEUR</font>
<br/>
Vous disposez de quatre commandos de trois hommes chacun pour accomplir votre mission, vous-mêmes êtes affecté  comme copilote de notre hélicoptère, accompagné de notre pilote et de notre médecin de campagne vous formez le cinquième commando. Disposez de vos forces comme bon vous semble pour exécuter vos différentes missions mais il sera sans doute préférable de séparer les commandos chacun sur un objectif différent et d’assurer leur transport sur zone et évacuation via l’hélicoptère. Quoi qu’il arrive vous ne devez en aucun cas perdre l’hélicoptère, il sera votre seul moyen d’évacuer la zone !
<br/>
Limitez vos contacts avec les forces ukrainiennes au minimum et préservez les vies civiles au maximum.
<br/><br/>
<font size='18'>PLAN DE MOUVEMENT</font>
<br/>
Servez-vous de l’hélicoptère pour acheminer vos troupes sur place et les récupérer. Vous disposerez aussi de deux véhicules terrestres banalisés, il vous appartient de recourir ou non à leur utilisation. Dans la zone occupée, les russes ont déjà établi de nombreux points de DCA, ne la survolez en aucun cas !
<br/><br/>
<font size='18'>CONDITIONS</font>
<br/>
La nuit se couche sur l’Ukraine, les conditions météo sont exécrables : pluie et brouillard sont annoncés sur toute la région, mais dans le cas présent cela joue plutôt à votre avantage, servez-vous en.
<br/><br/>


"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Vos objectifs seront les suivants.
<br/>
-Détruire toute preuve de notre présence sur place en « nettoyant » à coups d’explosifs la cache de la CIA de Chernogorsk. Tentez de procéder à cette destruction sans vous faire repérer par les troupes ukrainiennes. 
<br/>
-Les troupes russes se servent de l’aéroport de Krasnostav comme d’une base arrière, puis elles acheminent leurs troupes au sud par la route. La région entre Krasnostav et Dubrovka est parcourue de convois armés. Un de vos commandos devra pénétrer derrière les lignes ennemies et tendre une embuscade a un de ces convois avant de se replier. Assurez-vous de ne pas laisser de témoins vivants. Cette action devrait amener le commandement russe à se méfier des routes et à progresser plus prudemment ce qui laissera un peu plus de temps aux autorités Ukrainiennes pour élaborer leur défense. 
<br/>
<br/><br/>
<img image='media\2.jpg' width='300' height='200'/>
<br/><br/>
-Un de nos contacts locaux semble avoir été capturé par un commando Spetsnaz. L’imagerie satellite nous indique qu’il est retenu dans un petit camp avancé à proximité de Lopatino. Libérez-le vivant si possible et évacuez-le avec vous lors de l’exfiltration.
<br/>
- La zone au nord-ouest n’est pas encore entièrement occupée par l’armée russe, mais le commandement russe a d’ores et déjà dépêché sur l’aéroport de la région un petit contingent et un Tupolev. Eliminez-les et faites exploser l’avion.
<br/>
Quand tous ces objectifs seront accomplis, réunissez vos troupes à la base CIA de Komarovo, détruisez toute trace de notre présence et évacuez les lieux par hélicoptère en suivant la ligne d’exfiltration.
<br/>

"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Rapport confidentiel de la CIA. Cellule Ukrainienne.
<br/>
<br/><br/>
<img image='media\8.jpg' width='200' height='200'/>
<br/><br/>
<br/>
Comme nous le craignions suite à la crise de Crimée, la Fédération de Russie a étendu ses vues impérialistes au reste de l’Ukraine. M. Poutine sait que l’Europe est affaiblie et en proie à de nombreuses crises politiques et que les Etats-Unis ne peuvent plus soutenir un effort de guerre conséquent.
<br/>
<br/><br/>
<img image='media\10.jpg' width='200' height='300'/>
<br/><br/>
Ce matin à 07h20, heure locale, les forces Russes ont franchi la frontière Ukrainienne par le nord dans la région de Chernarus et ont commencé à établir des lignes de pont pour préparer une invasion complète du pays.
<br/>
<br/><br/>
<img image='media\12.jpg' width='300' height='200'/>
<br/><br/>
Toute intervention militaire directe de notre part est impossible mais on ne peut pas dire que nous soyons vraiment surpris par cet acte de guerre. Nous savions la région sensible et avions déployé sur place une cellule de la CIA forte d’une quinzaine d’hommes. Elite de nos agents de terrain ces hommes sont bien formés, bien organisés et bien équipés.
<br/>

<br/>
La cellule ne peut pas demeurer dans la région et il va nous falloir l’évacuer mais nous disposons d’un solide plan de repli établi de longue date par nos analystes. 
<br/>
<br/><br/>
<img image='media\1.jpg' width='300' height='200'/>
<br/><br/>
<br/>
Notre objectif n’est pas seulement de retirer nos hommes : il s’agit aussi d’opérer quelques actions de guérilla afin de ralentir la progression des forces Russe pour laisser le temps à l’armée régulière Ukrainienne de se réorganiser.
<br/>
<br/><br/>
<img image='media\9.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FORCES ENNEMIES</font>
<br/>
<br/><br/>
<img image='media\7.jpg' width='300' height='200'/>
<br/><br/>
Les forces du District Militaire Ouest de la Fédération de Russie ont massivement déployée leurs troupes sur place : il s’agit d’une armée d’invasion dans toute sa puissance, chars, véhicules de transport de troupes etc. Toute attaque frontale contre ces forces régulières est absolument à proscrire. 
<br/>
<br/><br/>
<img image='media\4.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<img image='media\6.jpg' width='300' height='200'/>
<br/><br/>
Nous savons aussi que le commandement Russe a dépêché des commandos Spetsnaz en éclaireur dans la région. Ces commandos sont bien formés et bien équipés mais leur position avancée en fait des cibles potentielles pour nos hommes.
<br/>
<br/><br/>
<img image='media\11.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FORCES ALLIEES</font>
<br/>
Les autorités Ukrainiennes ignorent évidemment la présence de nos services d’espionnage sur leur territoire. C’est pourquoi bien que l’Ukraine soit notre allié officiel nous ne pouvons nous permettre de faire appel à leur aide. Les troupes locales traiterons donc nos hommes en hostiles s’ils sont détectés et ouvriront probablement le feu. Vous avez la permission de vous défendre en les éliminant si un tel cas de figure se produisait mais vous devez absolument limiter les conflits avec l’armée régulière Ukrainienne. Préférez l’approche furtive et évitez de faire un bain de sang au sein de leurs rangs. Si vous êtes capturés nous nierons toute connaissance de vos agissements dans la région.
<br/><br/>
<img image='media\3.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================