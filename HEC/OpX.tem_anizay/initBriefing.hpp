// Normal briefing

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

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

player createDiaryRecord ["diary", ["Mission","
<br/>
Ihre Mission ist, die abgestürzten Seals zu suchen und Bin Laden zu ergreifen.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

player createDiaryRecord ["diary", ["Situation","
<br/>
Operation 'Neptune Spear' ist fehlgeschlagen.
<br/>
Beide Black Hawks der DEVGRU sind abgestürzt.
<br/>
CIA Agenten nehmen an, dass Bin Laden an einen von 2 Verstecken untergebracht ist, um schnellst möglichst das Land zu verlassen (<marker name = 'm_h2'>Hotel 1</marker>, <marker name = 'm_h2'>Hotel 2</marker>).
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Bin Ladens Leibwächter und Anhänger in der Region sind alarmiert.
<br/>
Des weiteren ist die Pakistanische Armee, von <marker name = 'm_fob_nauzad'>FOB Nauzad</marker> und <marker name = 'm_fob_obeh'>FOB Obeh</marker> unterwegs, um die Region zu sichern.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
15 U.S. Navy Seals sind mit den <marker name = 'm_crashed_heli'>Hubschraubern</marker> abgestürzt.
<br/>
Des weitern sind CIA Agenten in der Umgebung.
<br/>
"]];

// ====================================================================================

// NOTES: Credits
// The code below creates the credit sub-section.

player createDiaryRecord [
	"Diary", 
	[
		"AUTHOR AND ACKNOWLEDGMENTS", 
		"<br/>Created by M4RT14L I appreciate your work->
		<br/>Shuko, Bon_Inf*, Creobellum, and kylania for their fantastic scripts and everything I learned,
		<br/>To the ALiVE Team by this amazing tool,
		<br/>To Belbo [SEL] for his TFAR config script, Loadout GUI, ACE Settings and logistic
		<br/>Nashable for nash_zeus_mhq, be sure to visit www.playdefiance.com,
		<br/>Red Hammer Studios for RHS,
		<br/>Leight for his Opfor Pack,
		<br/>CUP for CUP Terrain,
		<br/>Larrow for LAR-fnc_removetasks,
		<br/>Valixx and kylania for his work scripting Random Objectives,
		<br/>pokertour for =ATM= Airdrop,
		<br/>To my friends of Clan ESUS for work and shared hours, visit www.clanesus.com,
		<br/>The fantastic community of BIS Forums that no cease to work to improve ArmA III.
		<br/>
		<br/>||HEC|| Neodym for the Template"
	]
];


