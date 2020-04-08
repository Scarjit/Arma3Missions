this addEventHandler ["HandleDamage", { 
 private _unit = _this select 0; 
 private _projectile = _this select 4; 
  
 if (_projectile == "") then { 
  
 }else{	
	private _hasSmoke = _unit getVariable "xSmoke";
	if (isNil "_hasSmoke") then
	{
		_unit setVariable ["xSmoke", true];
		_smoke = "SmokeShellYellow" createVehicle position _unit; 
		_smoker attachto [_unit,[0,0,0]]; 
	};
 }; 
  
  
 0 
}];