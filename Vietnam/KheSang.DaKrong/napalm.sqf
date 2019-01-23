/*
	Removes some trees from the map
*/

if (!isServer) exitWith {};

_trees = nearestTerrainObjects 
	[
		[worldSize/2, worldSize/2], 
		["TREE"], 
		1000, 
		false
	];

_cnt = 0;

_fx = 0;
{	
	_fx = _fx + 1;
	if(_fx > 10) then {
		_fx = 0;
		_x hideObjectGlobal true;
		_cnt = _cnt + 1;
	}
} foreach (_trees);

hint format ["Trees %1 Removed: %2", count _trees, _cnt];