_arty = _this select 0;
_target = _this select 1;
_reloadTime = _this select 2;
_startTime = _this select 3;
_shellCount = _this select 4;

_theAmmo  = getArtilleryAmmo [_arty] select 0;

_idx = 0;

_arty addMagazineTurret [_theAmmo, [0]];
sleep _startTime;


while {(_idx < _shellCount)} do{
	_tgtPos = position _target;
	_isInRange = _tgtPos inRangeOfArtillery [[_arty], _theAmmo ];
	if (_isInRange) then {
		_arty doArtilleryFire [_tgtPos, _theAmmo, 1]; 
		_arty addMagazineTurret [_theAmmo, [0]];
		sleep _reloadTime;
	} else {
		_idx = _shellCount;
	};

	_idx = _idx + 1;
};