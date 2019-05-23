## Open Bargate

this allowDamage false; _nul = [this] SPAWN {while {true} do {  waitUntil {sleep 1; count ((getposATL (_this select 0)) nearEntities [["Car"],30]) > 0};  (_this select 0) animate ["Door_1_rot", 1];  waitUntil {sleep 1; count ((getposATL (_this select 0)) nearEntities [["Car"],30]) == 0};  (_this select 0) animate ["Door_1_rot", 0];  };  };


## Air refill (Condition)
("Air" countType thislist  > 0) && ((getpos (thislist select 0)) select 2 < 1)

## Air refill (On Activation)
_xhandle= (thislist select 0) execVM "scripts\x_reload.sqf";

## Land refill (Condition)
("LandVehicle" countType thislist  > 0) && ((getpos (thislist select 0)) select 2 < 1)

## Land refill (On Activation)
_xhandle= (thislist select 0) execVM "scripts\x_reload.sqf";

## Logistic flag
this allowDamage false; this addAction ["<t size='1.2' color='#FF8000'>Logistic</t>", {createDialog "adv_logistic_mainDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## MHQ Flag
this addAction["<t color='#ff1111'>Create New MHQ</t>", "MHQ\SpawnMHQ.sqf"]; this addAction["<t color='#ff1111'>Teleport To Mhq</t>", "MHQ\TPMHQ.sqf"];

## Teleport Flag
this allowDamage false; this addAction ["<t size='1.2' color='#FF8000'>Teleport</t>", {createDialog "adv_teleport_mainDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## Sponsor Sign small
this setobjecttexture [0,"pics\hqcartel.jpg"]; this setPos [getPos this select 0, getPos this select 1, -0.4]; this setVectorUp [0,0,1]; this setVariable ["R3F_LOG_disabled", true];

## Arsenal Weapon crate
clearMagazineCargoGlobal this;  
clearWeaponCargoGlobal this;  
clearItemCargoGlobal this;  
clearBackpackCargoGlobal this; this allowDammage false; [this, true] call ace_arsenal_fnc_initBox; ["AmmoboxInit",[this,true]] call BIS_fnc_arsenal;

## USMC Loadout Crate (Supply Box [NATO])
clearMagazineCargoGlobal this; 
clearWeaponCargoGlobal this; 
clearItemCargoGlobal this; 
clearBackpackCargoGlobal this; 
this allowDammage false; this addAction ["<t size='1.2' color='#FF8000'>US Marines Ausrüstung</t>", {createDialog "usmarinesLoadoutDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## US Loadout Crate (Supply Box [NATO])
clearMagazineCargoGlobal this; 
clearWeaponCargoGlobal this; 
clearItemCargoGlobal this; 
clearBackpackCargoGlobal this; this allowDammage false;
this addAction ["<t size='1.2' color='#FF8000'>US Ausrüstung</t>", {createDialog "usocpLoadoutDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## US Special Forces Crate (Supply Box [NATO])
clearMagazineCargoGlobal this; 
clearWeaponCargoGlobal this; 
clearItemCargoGlobal this; 
clearBackpackCargoGlobal this; 
this allowDammage false; this addAction ["<t size='1.2' color='#FF8000'>US Special Forces Ausrüstung</t>", {createDialog "ussfLoadoutDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## BW Tropen Crate (Supply Box [NATO])
clearMagazineCargoGlobal this; 
clearWeaponCargoGlobal this; 
clearItemCargoGlobal this; 
clearBackpackCargoGlobal this; 
this allowDammage false; this addAction ["<t size='1.2' color='#FF8000'>BW Tropen Ausrüstung</t>", {createDialog "bwtropLoadoutDialog";},nil,3,FALSE,TRUE,"","player distance cursortarget <5"];

## Minarete (Loadspeaker)
minarete_1 - minarete_8

## z1 z2 -> Zeus
## s1 - s29 -> Players