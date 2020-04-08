if(isServer)then{

  FSG_fnc_addCram = {
    params["_cram","_range"];
    _null = [_cram,_range]spawn{
      private["_cram","_range","_incoming","_target","_targetTime"];
      _cram = _this select 0;
      _range = _this select 1;
      while{alive _cram}do{
        _incoming = _cram nearObjects["ShellBase",_range];
        _incoming = _incoming + (_cram nearObjects["MissileBase",_range]);
        _incoming = _incoming + (_cram nearObjects["RocketBase",_range]);

        if(count _incoming > 0)then{
          _target = _incoming select 0;
          _fromTarget = _target getDir _cram;
          _dirTarget = direction _target;
          if(_dirTarget < _fromTarget + 25 && _dirTarget > _fromTarget - 25 && ((getPos _target) select 2) > 20 && alive _target)then{
            _targetTime = time + 5;
            while{alive _cram && alive _target && _targetTime > time}do{
              _cram doWatch _target;
              if((_cram weaponDirection (currentWeapon _cram)) select 2 > 0.15)then{
                _cram fireAtTarget[_target,(currentWeapon _cram)];
              };
            };
          };
          if(alive _target && alive _cram && _target distance _cram < FSG_CRAMDIS && _target distance _cram > 40 && (getPos _target) select 2 > 20)then{
            _null = [_target,_cram]spawn{
              private["_target","_cram","_expPos","_exp"];
              _target = _this select 0;
              _cram = _this select 1;
              _expPos = getPos _target;
              deleteVehicle _target;
              sleep 1;
              _exp = "helicopterexplosmall" createVehicle _expPos;
            };
          };
        };
        if(count _incoming == 0)then{
          sleep 1;
        };
      };
    };
  };
};