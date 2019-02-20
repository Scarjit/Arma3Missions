//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";
if (isServer) then {[1000,-1,true,100,1000,1000]execvm "zbe_cache\main.sqf"};

//////////////////////////////
//--ALiVE TAKISTAN NATOFOR--//
//-------By M4RT14L---------//
//////////////////////////////

#include "initBriefing.hpp";
enableSaving [false,false];
#include "funcs\compile_funcs.sqf"
//Functiones---------------------//
call compile preprocessfile "globaltools.sqf";
//------------------------------//


//Scripts-----------------------//
[] execVM "scripts\fn_advancedSlingLoadingInit.sqf";
[] execVM "scripts\fn_advancedTowingInit.sqf";
cTab_encryptionKey_west = "b";

//------------------------------//
 
//if (!ins_debug) then {
	[] call compileFinal preprocessfilelinenumbers "scripts\intro.sqf";
//};

if (!hasInterface && !isDedicated) then {
 headlessClients = [];
 headlessClients pushBack player;
 publicVariable "headlessClients";
isHC = true;
};

//Zeus Magic
/* if (isServer) then 
{
	//CuratorModule = your curator module name; true = boolean, if civilians should be editable by zeus as well.
	[z1,true] execVM "scripts\ADV_zeus.sqf";
	
}; */

if (isClass(configFile >> "CfgPatches" >> "ace_explosives")) then {
    {
        _defuseHelper = "ACE_DefuseObject" createVehicleLocal (getPos _x);
        _defuseHelper attachTo [_x, [0,0,0]];
        _defuseHelper setVariable ["ACE_explosives_Explosive",_x];
    } forEach allMines;
};
missionNamespace setVariable ["ace_medical_healHitPointAfterAdvBandage",false];
if (true) exitWith {};
