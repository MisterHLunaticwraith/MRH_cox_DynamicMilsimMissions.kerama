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
Pour exécuter le départ de la mission administrateur doit la lancer via le menu admin, une fois que tous les hommes sont équipés et embarqués dans les avions.
<br/>

<br/>
=========================
<br/>
Mission par Mr H.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["COMSIG","
<br/>
<br/>

<br/>
OC= Ondes Courtes LO= Longues Ondes
<br/>

<br/>
Commandement de section LO channel 1
<br/>

<br/>
Bravo OC Channel 1
<br/>
Charlie OC Channel 2
<br/>
Delta OC Channel 3
<br/>
Alpha OC Channel 4
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>ORDRES DU COMMANDEMENT</font>
<br/>
<br/>
Les autres zones de combats dans la région sont à la charge de l'armée régulière somalienne qui mènera ses assauts conjointement au votre. Vous ne devriez pas avoir de contact direct avec ces troupes, tout contact sera donc à traiter en ennemi.
<br/><br/>
<font size='18'>ACHEMINEMENT SUR ZONE</font>
<br/>
<br/>
 Vous serez acheminés sur place depuis la FOB Conrad à Djibouti. Deux C-130 transporteront votre section sur zone et vous serez parachutés de nuit au dessus de la <marker name = 'dropzone'>zone</marker> prévue. Embarquement à 19:00 pour un parachutage prévu aux alentours de 22:00. Votre mission se déroulera donc de nuit.
 <br/><br/>
<img image='media\img\5.jpg' width='300' height='181'/>
<br/><br/>
<font color='#d3b000' size='9'>Un C130 en vol.</font>
<br/><br/>
<font size='18'>RENFORTS</font>
<br/>
<br/>
Quand vous aurez sécurisé la zone nous pourrons parachuter quelques réapprovisionnements sur votre position. Mais il vous faudra ensuite tenir plus longtemps dans l'éventualité d'une contre-attaque pour avoir des renforts conséquents.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
//Équipement
<br/>
Vous disposerez de l'équipement standard de l'armée U.S.
<br/>
Vos deux tireurs d'élites disposent de deux lunettes différentes chacun dont une équipée de dispositif de vision nocturne AN/PVS22.
<br/><br/>
<img image='media\img\9.jpg' width='300' height='133'/>
<br/><br/>
<font color='#d3b000' size='9'>Une lunette doté d'un objectif VN de type AN/PVS22</font>
<br/>
Tous vos hommes sont équipés de LVN standard, pensez à les équiper AVANT d'embarquer.
<br/>
Vos hommes porteurs de sacs à dos devront les faire passer sur leur ventre avant de se munir d'un parachute.
<br/>
Une caisse contenant des parachutes et une autre des flares sont à votre disposition au poste de commandement.
<br/>

"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
<br/><br/>
<img image='mrh.jpg' width='300' height='200'/>
<br/><br/>
<font color='#d3b000' size='9'>Operation Heart of Darkness</font>
<br/><br/>
La mission de la 101st Airborne est de reprendre le village de <marker name = 'obj'>Ghriss</marker> aux Djihadistes et de le sécuriser, ainsi que l’émetteur <marker name = 'radio'>radio</marker> au nord. Il vous faudra ensuite sécuriser et tenir la zone jusqu'à l'arrivée de renforts plus conséquents.
<br/><br/>
<img image='media\img\6.jpg' width='200' height='290'/>
<br/><br/>
<font color='#d3b000' size='9'>Le blason de la 101ème aéroportée.</font>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation Géopolitique","
<br/>
<br/>

<br/>
Somalie 11 juin 2014. 
<br/>
<br/><br/>
<img image='media\img\7.jpg' width='200' height='200'/>
<br/><br/>
<font color='#d3b000' size='9'>Localisation de la Somalie</font>
<br/><br/>
Déstabilisé par les années de guerres civiles successives le pays est en proie à un nouveau conflit depuis 2006. De nombreux groupes islamistes de mouvances radicales se sont développés dans la région et mettent le pays à feu et à sang. Le pouvoir local, soutenu par Washington et avec à sa tête à l'époque le président Hassan Sheikh Mohamoud est presque impuissant dans la lutte contre les djihadistes.
<br/><br/>
<img image='media\img\1.jpg' width='200' height='253'/>
<br/><br/>
<font color='#d3b000' size='9'>Le président Mohamoud</font>
<br/><br/>
<br/><br/>
<img image='media\img\2.jpg' width='194' height='200'/>
<br/><br/>
<font color='#d3b000' size='9'>Carte du pays.</font>
<br/><br/>
<img image='media\img\3.jpg' width='300' height='200'/>
<br/><br/>
<font color='#d3b000' size='9'>Drapeau officiel.</font>
<br/><br/>
<br/><br/>
<font size='18'>SITUATION LOCALE</font>
<br/>
<br/>
Votre mission se déroulera dans le sud du pays, le climat y est aride et semi-désertique. La région, éloignée du pouvoir central est sous la coupe des groupes insurrectionnels djihadistes qui ont mis en déroute les forces régulières gouvernementales.
<br/><br/>
<img image='media\img\8.jpg' width='200' height='150'/>
<br/><br/>
<font color='#d3b000' size='9'>Pas le coin le plus chouette pour passer ses vacances.</font>
<br/>

<br/>
Le groupe Al-Shabbab y est très présent, c'est une formation affiliée à Al-Qaïda qui dispose de combattants formés au combat en Afghanistan puis renvoyés au pays. Ils disposent d'un arsenal de guerre majoritairement de fabrication russe.
<br/>

<br/>
Il-y-a une semaine les groupes Djihadistes se sont emparés d' '<marker name = 'military'>une base de l'armée régulière</marker> au sud d'Anlif puis du village d' '<marker name = 'anlif'>Anlif</marker> lui même. Ils ont ensuite investi les villages de <marker name = 'telagh'>Telagh</marker> et de <marker name = 'obj'>Ghriss</marker> . Prenant ainsi le contrôle du seul émetteur radio de la région, situé au <marker name = 'radio'>nord</marker> du village.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
<br/>
L'armée régulière somalienne est toujours présente dans la région mais elle a été chassée de ses propres bases militaires et est cruellement en sous-effectif. Elle a lancé une contre attaque pour récupérer sa base et libérer les villages alentours mais ses effectifs sont insuffisants pour récupérer le contrôle de toute la zone. Le gouvernement central, allié de Washington, nous demande de l'aide pour appuyer son assaut.
<br/><br/>
<img image='media\img\4.jpg' width='294' height='200'/>
<br/><br/>
<font color='#d3b000' size='9'>Patrouille de l'armée régulière.</font>
"]];

// ====================================================================================