

//________________  Author : GEORGE FLOROS [GR] ___________ 30.01.19 _____________

/*
________________ GF_Unit_Spawner Script - Mod ________________

//	Not yet realesed

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /*
means that it is disabled , so there is no need to delete the extra lines.

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain colors to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Script - Mods , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-Script - Mods/
*/




//________________	GF_Unit_Spawner options	________________
GF_Unit_Spawner_Squad_Members 				= 5;
GF_Unit_Spawner_Squad_Members_random 		= 5;	// + random
GF_Unit_Spawner_Enemy_Side 					= east;	// the side
GF_Unit_Spawner_set_AiSkill					= 0.75;
GF_Unit_Spawner_set_AiSkill_random			= 0.25;


GF_Unit_Spawner_Enemy_Pool = [			//	Enemy Units classnames
	
	//	Ravage zombies
	
	"zombie_bolter",		
	"zombie_runner",
	"zombie_walker"
	];


_object = _this select 2;
	
_Pos = getPosATL _object;

_Group = createGroup GF_Unit_Spawner_Enemy_Side;

for "_x" from 0 to (GF_Unit_Spawner_Squad_Members + floor random GF_Unit_Spawner_Squad_Members_random) do {
	
	selectrandom GF_Unit_Spawner_Enemy_Pool createunit [_Pos, _Group, "this allowDamage false; newunit = this"];
	
	_unit = newunit;
	
	[_unit] JoinSilent _Group;
	(leader _Group) setSkill GF_Unit_Spawner_set_AiSkill + floor random GF_Unit_Spawner_set_AiSkill_random;

	_unit setVariable ["Var_GF_Unit_Spawner_Spawn",true];
	
	_unit setPosATL _Pos;
	
	[_unit] spawn {
		_xunit = _this select 0;
		sleep 1;
		_xunit allowDamage true;
	};
};

if(count _this >= 4 && _this select 3) then {
	_stalked = selectrandom (_this select 1);
	[_Group,group _stalked] spawn BIS_fnc_stalk;
};
