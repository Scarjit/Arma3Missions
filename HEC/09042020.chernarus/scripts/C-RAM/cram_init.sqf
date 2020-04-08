if(isServer)then{

FSG_DEBUG = TRUE; //Show debug info

FSG_CURATORS = [z1, z2]; //Add game masters here

FSG_CRAMDIS = 2000; //Distance to scan for projectiles

{
  if(_x isKindOf "B_AAA_System_01_F")then{
    if((side _x) == West)then{
      [_x,FSG_CRAMDIS]call FSG_fnc_addCram;
    };
  };
} forEach vehicles;

{
  _x addEventHandler["CuratorObjectPlaced",{
    _obj = _this select 1;
    if(_obj isKindOf "B_AAA_System_01_F")then{
      [_obj, FSG_CRAMDIS]call FSG_fnc_addCram;
    };
  }];
}forEach FSG_CURATORS;

};