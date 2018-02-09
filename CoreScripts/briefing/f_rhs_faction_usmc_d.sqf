/// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: USMC

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
Mr H. pour la team TGV
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Vous disposez de deux vehicules blindés, une jeep de type HUMVEE et un véhicule de transport de troupe, un demineur de l'USMC est present dans votre equipe.
<br/><br/>
<img image='media\2.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>ORDRES DU COMMANDEMENT</font>
<br/>
Les Talibans auront probablement miné la zone et barricadé les entrées du village, vous devrez choisir un point de debarquement et entrer dans la zone a pied pour vous assurer que le terrain n'est pas piégé avant de pouvoir y faire penetrer les vehicules.
<br/><br/>
N'oubliez-pas: La sécurité des otages et de leur hélicoptère d'exfiltration sont vos objectifs prioritaires.
<br/><br/>
<font size='18'>PLAN D ACTION</font>
<br/>
Suivez la route autant que possible, les alentours sont probablement minés. Nous ne disposons pas d'informations exactes sur la localisation des otages, il vous faudra donc fouiller les bâtiments un à un pour les trouver et les secourir. Nous vous rappellons que la procédure d'exfiltration de civils est très stricte, vous devrez les restreindre avant de les déplacer, ceci pour leur sécurité et la votre. Une fois les otages délivrés et la zone sécurisée conduisez-les au point d'exfiltration. Un hélicoptère de l'O.N.U. viendra les récupérer mais il vous appartient de les charger à bord du véhicule.
<br/><br/>
La destruction du dépôt d'explosifs est une phase de l'opération laissée à votre entière appréciation.
<br/><br/>
<font size='18'>SUPPORT AERIEN</font>
<br/>
Vous ne disposez d'aucun appui de frappe aérienne mais un hélicoptère de l'ONU viendra récupérer les otages à leur point d'exfiltration.
<br/><br/>
<img image='media\5.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>TACHES SUPPLEMENTAIRES</font>
<br/>
Dans la mesure du possible, essayez de desamorcer un maximum d'engins explosifs.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
<br/><br/>
<img image='EP.jpg' width='300' height='200'/>
<br/><br/>
Votre mission est de reprendre à tous prix le village de Nur et d'eliminer les forces hostiles dans le secteur. Il vous faudra aussi localiser les deux otages de MSF et les ramener sains et saufs au point d'exfiltration.<br/><br/>
<img image='media\6.jpg' width='300' height='200'/>
<br/><br/> 
Vous devrez enfin faire exploser le dépôt d'explosifs que les talibans gardent dans le village.
<br/><br/>
<img image='media\3.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Les Talibans se sont emparés du village de Nur dans la nuit, les premiers temoignages rapportent qu'ils ont massacré la population civile locale et pris en otage deux volontaires français de médecins sans frontières. Nos renseignements indiquent aussi que les talibans ont mit la main sur un imposant stock d'explosifs qu'ils ont entreposés dans le village.
<br/><br/>
<img image='media\7.jpg' width='300' height='200'/>
<br/><br/>
Le corps des marines des forces armees Americaines est le plus proche des lieux et doit intervenir.
<br/><br/>
<img image='media\4.jpg' width='200' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FORCES HOSTILES</font>
<br/>
Les images preliminaires prises par satellite montrent une force ennemie d'une quarantaine de combattants.  Les methodes des Talibans incluent en general la pose d'engins explosifs.
<br/><br/>
<img image='UAVFEED1.jpg' width='300' height='200'/>
<br/><br/>
<img image='UAVFEED2.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FORCES ALLIEES</font>
<br/>
Le bataillon Alpha est la seule force dont nous disposons dans le secteur, n'attendez aucun renfort.
<br/><br/>
<img image='media\1.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================