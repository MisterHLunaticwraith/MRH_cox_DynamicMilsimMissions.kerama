// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CTRG

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
Mr H. Pour la team TGV
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["COMSIG","
<br/>
COMSIG:
<br/>

<br/>
LO= Longues Ondes
<br/>
OC= Ondes Courtes
<br/>

<br/>
Communications de commandement: LO channel 1
<br/>
Strike Team 1 ==> OC channel 1
<br/>
Strike Team 2 ==> OC channel 2
<br/>
CMD ==> OC channel 3
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>SITUATION</font>

<br/>
Le président Rùshkstel passe actuellement ses troupes en revues sur la base militaire de <marker name = 'base'>Tblissia</marker> . L'île est divisée entre la base militaire et deux zones civiles <marker name = 'civ1'>ici</marker> et <marker name = 'civ2'>ici</marker> qu'il vous faudra impérativement éviter.
<br/>
<br/><br/>
<img image='media\img\9.jpg' width='300' height='200'/>
<br/><br/>
<br/>
La base est protégée contre toute attaque aérienne par deux batteries de DCA <marker name = 'DCA1'>ici</marker> et <marker name = 'DCA2'>ici</marker> .
<br/>

<br/>
Parmi les infrastructures dont nous avons connaissances se trouvent un <marker name = 'radar'>radar P37</marker> et un <marker name = 'general'>centre de communications</marker> , tout nous porte à croire quele bras droit du président, le général Soklovcisz se trouve dans ce centre.
<br/><br/>
<font size='18'>ORDRES DE MISSION</font>

<br/>
Nous avons l'appui discret des forces américaines qui nous fournirons un appui logistique. Vous serez insérés sur zone depuis un <marker name = 'uss'>porte avion</marker> américain qui croise dans la zone, officiellement pour des manoeuvres d'entraînement.
<br/>

<br/>
Vos missions seront les suivantes:
<br/>

<br/>
- Vous embarquerez dans un navire de type Mk5 pour vous rendre au point de débarquement de votre choix.
<br/>
<br/><br/>
<img image='media\img\3.jpg' width='300' height='200'/>
<br/><br/>
- Vous devrez détruire le <marker name = 'radar'>radar P37</marker> ainsi que les deux <marker name = 'DCA1'>postes antiaériens</marker> . Afin de pouvoir recevoir un appui aérien. Si vous parvenez à remplir ces deux objectifs deux avions des support aérien opéreront quelques passages au dessus de la base et bombarderons les zones où l'imagerie satellite nous montre qu'il y a le plus de troupes ennemies. 
<br/>
<br/><br/>
<img image='media\img\12.jpg' width='300' height='200'/>
<br/><br/>
<br/>
- Vous devrez trouver et abattre le général Soklovcisz qui se trouve probablement au <marker name = 'general'>poste de communication</marker> .
<br/>
- Vous devrez enfin localiser le président Rùshkstel qui se trouve quelque part sur la <marker name = 'base'>base militaire.</marker> l'abattre et identifier formellement son corps. [MENU ROULETTE SUR LE CORPS] 
<br/><br/>
<font size='18'>INFORMATIONS COMPLEMENTAIRES</font>

<br/>
Rùshkstel sera probablement protégé par sa garde rapprochée: des hommes des services secrets bien entrainés et bien formés.
<br/>
<br/><br/>
<img image='media\img\4.jpg' width='300' height='200'/>
<br/><br/>
<br/>
La mission débute à 14:20 heure locale, la météo est couverte et devrait se dégrader, de fortes vagues sont annoncées.
<br/>

<br/>
Quand les avions de support aérien pourront décoller leurs cibles seront marquées sur la carte, ne restez pas sur zone afin que les pilotes puissent faire leur travail.
<br/><br/>
<font size='18'>NOTE</font>


<br/>
Ni ACADEMI ni aucun des gouvernements impliqués ne reconnaîtrons avoir eu connaissance de vos agissements si vous êtes capturés. Tous les contracteurs recevront une prime de 10000$ en cas de succès de l'opération.
<br/><br/>
<img image='media\img\6.jpg' width='300' height='88'/>
<br/><br/>
<br/><br/>
<img image='media\img\8.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/><br/>
<img image='mrh.jpg' width='300' height='200'/>
<br/><br/>
<br/>
Tout ce qui suit est la propriété de Academi holdings © et ne peut en aucun cas être copié ou diffusé au public. Tout contrevenant s'expose à des poursuites judiciaires.
<br/>
<br/><br/>
<img image='media\img\6.jpg' width='300' height='88'/>
<br/><br/>
<br/>
22 Juin 2017 Nord de l'Estonie, île de Tblissia.
<br/>
<br/><br/>
<img image='media\img\7.jpg' width='300' height='200'/>
<br/><br/>
<br/>
Les U.S.A. et l'Union Européenne ne peuvent évidemment pas intervenir officiellement en Estonie et risquer une crise diplomatique internationale, mais la situation politique dans un pays qui est membre de l'U.E.  leur est insupportable, c'est pourquoi l'O.T.A.N. a recours à notre S.M.P. pour agir dans la plus grande discrétion. Votre mission: Eliminer Rùshkstel et ramener des preuves de sa mort que nous ferons fuiter dans la presse.
<br/><br/>
<img image='media\img\1.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
<br/><br/>
<img image='media\img\10.jpg' width='300' height='200'/>
<br/><br/>
La semaine dernière un coup d'état militaire a destitué la présidente estonienne Kersti Kaljulaid pour la remplacer par un homme de paille pro-russe: le Président Rùshkstel.
<br/>
<br/><br/>
<img image='media\img\2.jpg' width='200' height='300'/>
<br/><br/>
<br/><br/>
<img image='media\img\5.jpg' width='300' height='200'/>
<br/><br/>
<br/>
L'Estonie fait partie de l'Union Européenne et est membre de l'O.T.A.N., la position du pays est stratégique dans les luttes d'influence qui opposent la fédération de Russie au monde occidental, il ne fait donc aucun doute que ce coup a été orchestré en sous main depuis Moscou même si les preuves manquent.
<br/>
<br/><br/>
<img image='media\img\11.jpg' width='300' height='200'/>
<br/><br/>
<br/>
En s'appuyant sur les cadres de l'armée et notamment sur le général Soklovicsz, le président Rùshktel a rapidement établi un régime autoritaire et affiché son allégeance à V. Poutine et son désir de quitter l'U.E. et l'O.T.A.N. on parle désormais ouvertement d'un très prochain 'Estoxit'.
<br/>

<br/>
Fort de sa position Rùshkstel rend aujourd'hui visite à ses troupes sur l'île de Tblissia au nord du pays.
<br/><br/>

"]];

// ====================================================================================