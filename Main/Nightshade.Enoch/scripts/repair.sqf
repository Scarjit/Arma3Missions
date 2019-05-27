params ["_thisObj","_thisList"];

{
	if (_x isKindOf "Air") then {
		_x setdamage 0;	
		_x setfuel 1;
		_x setVehicleAmmo 1;
	};
} forEach _thisList;


