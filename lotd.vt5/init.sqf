call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";[] exec "explore.sqs";setViewDistance 350;0 setFog [1, 0.04, 0];960000 setFog [0,0,0];titleCut ["", "BLACK FADED", 999];
	[] Spawn {
	waitUntil{!(isNil "BIS_fnc_init")};
	
	titleText [".","PLAIN DOWN"]; 
	titleFadeOut 7;
	sleep 5;

	titleText ["This Is The Worst Paranormal Investigation On Record","PLAIN"];
	titleFadeOut 7;
	sleep 5;

	titleText ["FBI SWAT Will Conduct A Manhunt Operation & Gather Intel On The Situation.","PLAIN DOWN"];
	titleFadeOut 12;
	sleep 10;
	
	// Info text
	[str ("FBI SWAT"), str("Paranormal Case"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;
		
	sleep 3;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	
	titleCut ["", "BLACK IN", 9];
	};