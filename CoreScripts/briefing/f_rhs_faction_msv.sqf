
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
Mr H.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Une caisse de munitions supplémentaires et une caisse de matériel médical sont à votre disposition à la base, il vous appartient de choisir ou non de les charger dans vos véhicules.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>METEO</font>

<br/>
Le temps est clair et le ciel devrait rester dégagé, la mission commence à 10:00 précise.
<br/><br/>
<font size='18'>COMSIG</font>
<br/>
LO= Longues Ondes / OC= Ondes Courtes 
<br/>

<br/>
Reseau de commandement: LO 1
<br/>
[FOX CMD] OC1
<br/>
[FOX 1 ] OC2
<br/>
[FOX 2] OC3
<br/>

<br/>
Support Aérien: LO2
<br/>
[EAGLE] OC4
<br/>

<br/><br/>
<font size='18'>SUPPORTS</font>
<br/>
Vous êtes la seule équipe dans la région.
<br/><br/>
<font size='18'>TACHES SPECIALES</font>
<br/>
Pour détruire les DCA ennemis vos 2 chefs d'escouades disposent de charge de démolition M112 et de détonateurs.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/><br/>
<img image='MRH.jpg' width='300' height='200'/>
<br/><br/>
//=============
<br/>
Votre tache principale sera de trouver et d'éliminer le colonel Mamtchour dans le camp de <marker name = 'camp'>Belbek</marker> .
<br/>
<br/><br/>
<img image='media\img\9.jpg' width='300' height='200'/>
<br/><br/>
//=============
<br/>
Vous augmenterez considérablement vos chances de réussites si vous parvenez à détruire les 3 postes de DCA qui protègent la zone et permettez ainsi à vos pilotes de vous fournir un appui aérien. 
<br/><br/>
<img image='media\img\4.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
<br/><br/>
<img image='media\img\2.jpg' width='300' height='200'/>
<br/><br/>
22 Mars 2014
<br/>
Depuis le 1er Mars de cette année le Conseil de la Fédération de Russie a donné à notre bien aimé président Vladimir Poutine l'autorisation de faire usage de la force en Ukraine.
<br/><br/>
<img image='media\img\8.jpg' width='300' height='200'/>
<br/><br/>
 Nos opérations vont de succès en succès et les occidentaux nous observent sans oser intervenir, c'est pour nous une bonne occasion de leur montrer que nous sommes toujours une puissance de 1er ordre!
<br/><br/>
<img image='media\img\3.jpg' width='300' height='200'/>
<br/><br/>
Mais les ukrainiens ne se laissent pas faire, le colonel Youli Mamtchour  commandant de la garnison de Belbek est surnommé le renard (????  [leeSAH] en russe) et ce n'est pas pour rien, il arrive à tenir nos troupes en échec et cela nous est insupportable!
<br/><br/>
<img image='media\img\9.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Les forces ukrainiennes sont en garnison autour de la base de <marker name = 'camp'>Belbek</marker>  et la base est protégée par trois batteries ZU23-2 qui se trouvent sur les hauteurs alentours (<marker name = 'aa1'>ici</marker> , <marker name = 'aa2'>ici</marker> et <marker name = 'aa3'>ici</marker> )
<br/><br/>
<img image='media\img\4.jpg' width='300' height='200'/>
<br/><br/>
<br/>

<br/>
Nos renseignements indiquent  que les forces ukrainiennes sont nombreuses et que l'ennemi dispose d'au moins 2 véhicules blindés de type BMP1.
<br/>
<br/><br/>
<img image='media\img\5.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FORCES D'INTERVENTION</font>
<br/>
Vous disposez de véhicules de transport de troupe blindés de type BTR 80A. 
<br/><br/>
<img image='media\img\1.jpg' width='300' height='200'/>
<br/><br/>
Ainsi que de l'appui d'un hélicoptère Ka52 qui devrait grandement vous faciliter la tache pour vous débarrasser des blindés ennemis.
<br/><br/>
<img image='media\img\6.jpg' width='300' height='200'/>
<br/><br/>
 Vos pilotes auront par ailleurs accès à notre drône Pchela1T qui survole déjà la zone.
 <br/><br/>
<img image='media\img\7.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================
