{_x SetMarkerAlpha 0} forEach ["TAOR1","TAOR2","TAOR3","TAOR4"];

#include "initBriefing.hpp";
enableSaving [false,false];
//#include "funcs\compile_funcs.sqf"
//Functiones---------------------//
if (isServer) then {[1000,-1,true,100,1000,1000]execvm "zbe_cache\main.sqf"};
//------------------------------//

//------------------------------//

//Scripts-----------------------//
[] execVM "scripts\fn_advancedSlingLoadingInit.sqf";
[] execVM "scripts\fn_advancedTowingInit.sqf";
cTab_encryptionKey_west = "b";

//--------------C-RAM-----------------//
call compile preprocessFileLineNumbers "scripts\C-RAM\C-RAM.sqf";
_null = execVM "scripts\C-RAM\cram_init.sqf";

//--------------ENGIMA----------------//

/*
call compile preprocessFileLineNumbers "Engima\Civilians\Common\Common.sqf";
call compile preprocessFileLineNumbers "Engima\Civilians\Common\Debug.sqf";

// The following constants may be used to tweak behaviour

ENGIMA_CIVILIANS_SIDE = civilian;      // If you for some reason want the units to spawn into another side.
ENGIMA_CIVILIANS_MINSKILL = 0.4;       // If you spawn something other than civilians, you may want to set another skill level of the spawned units.
ENGIMA_CIVILIANS_MAXSKILL = 0.6;       // If you spawn something other than civilians, you may want to set another skill level of the spawned units.

ENGIMA_CIVILIANS_MAXWAITINGTIME = 300; // Maximum standing still time in seconds
ENGIMA_CIVILIANS_RUNNINGCHANCE = 0.05; // Chance of running instead of walking

// Civilian personalities
ENGIMA_CIVILIANS_BEHAVIOURS = [
	["CITIZEN", 100] // Default citizen with ordinary behaviour. Spawns in a house and walks to another house, and so on...
];

// Do not edit anything beneath this line!

ENGIMA_CIVILIANS_INSTANCE_NO = 0;

if (isServer) then {
	call compile preprocessFileLineNumbers "Engima\Civilians\Server\ServerFunctions.sqf";
	call compile preprocessFileLineNumbers "Engima\Civilians\ConfigAndStart.sqf";
};
*/

//------------------------------//

//if (!ins_debug) then {
	//[] call compileFinal preprocessfilelinenumbers "scripts\intro.sqf";
//};

if (!hasInterface && !isDedicated) then {
 headlessClients = [];
 headlessClients pushBack player;
 publicVariable "headlessClients";
isHC = true;
};

if (isClass(configFile >> "CfgPatches" >> "ace_explosives")) then {
    {
        _defuseHelper = "ACE_DefuseObject" createVehicleLocal (getPos _x);
        _defuseHelper attachTo [_x, [0,0,0]];
        _defuseHelper setVariable ["ACE_explosives_Explosive",_x];
    } forEach allMines;
};
missionNamespace setVariable ["ace_medical_healHitPointAfterAdvBandage",false];
if (true) exitWith {};
