/*
   _____      _ _ _      
  / ____|    (_) | |     
 | |  __ _ __ _| | | ___ 
 | | |_ | '__| | | |/ _ \
 | |__| | |  | | | |  __/
  \_____|_|  |_|_|_|\___|
                         
                         
*/

[] execVM "napalm.sqf";


/*
 __      _______ ____  __  __   ____  
 \ \    / / ____/ __ \|  \/  | |___ \ 
  \ \  / / |   | |  | | \  / |   __) |
   \ \/ /| |   | |  | | |\/| |  |__ < 
    \  / | |___| |__| | |  | |  ___) |
     \/   \_____\____/|_|  |_| |____/ 
                                      
                                      

Credits:
	https://forums.bohemia.net/forums/topic/216611-release-vcom-ai-3-dangerous-ai/
*/

[] execVM "Vcom\VcomInit.sqf";

/*
  ______ ____    ______                                           _    
 |  ____|___ \  |  ____|                                         | |   
 | |__    __) | | |__ _ __ __ _ _ __ ___   _____      _____  _ __| | __
 |  __|  |__ <  |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
 | |     ___) | | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   < 
 |_|    |____/  |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\
                                                                       
                                                                       

Credits:
	http://ferstaberinde.com/f3/en//index.php?title=Main_Page
*/

// F3 - Common Local Variables
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

{_x setSpeaker "NoVoice"} forEach playableUnits;


// ====================================================================================

// F3 - AI Unit Caching
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
f_var_cachingAggressiveness = 2;

