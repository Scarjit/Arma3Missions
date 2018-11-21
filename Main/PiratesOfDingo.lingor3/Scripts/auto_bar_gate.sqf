
_gate = param [0, objNull, [objNull]];
_radius = param [1, 30, [0]];
_gate_pos = getposATL _gate;

while {true} do {
	waitUntil {
		sleep 1;
		count (_gate_pos nearEntities [["Car"],_radius]) > 0
	};
	_gate animate ["Door_1_rot", 1];
	waitUntil {
		sleep 1;
		count (_gate_pos nearEntities [["Car"],_radius]) == 0
	};
	_gate animate ["Door_1_rot", 0];
};
