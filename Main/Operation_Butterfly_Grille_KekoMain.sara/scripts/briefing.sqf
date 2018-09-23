
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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Fire Support","
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
Als Fire Support stehen Kampfhubschrauber und die Schiff Bewaffnung bereit.
<br/>
Achten Sie drauf, dass die Russen beim Einsatz von Schiff gestützten Waffen misstrauisch werden können.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
MAIN:
<br/>
  - Ihre Mission ist die Kokain Bestände der Black Oder zu sichern.
<br/>
Optional:
<br/>
  - Die Black Order hat 2 FOBs, welche zerstört werden können um die Einnahme des Airfields zu erleichtern.
<br/>
  - Es gibt hinweise, dass die Black Order die Zivilisten der Insel zusammen getrieben hat und als Zwangsarbeiter nutzt. Versuchen Sie diese zu befreien.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Die Black Order hat das Kokain, welches sie in unseren Auftrag anbaut selbst weiterverkauft.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Die Black Order besitzt moderne NATO Ausrüstung und einige teile billiger russischer Ausrüstung.
<br/>
Die Black Order hat eine Grenze zu der Russischen Arme.
<br/>
Diese ist uns nicht feindlich gesonnen, wird aber ihr Land verteidigen und einschreiten, falls sie bemerkt, dass bei der Black Order etwas schief läuft.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Die CIA unterstützt uns mit allen mitteln, die erforderlich sind um das Kokain sicherzustellen.
"]];

// ====
