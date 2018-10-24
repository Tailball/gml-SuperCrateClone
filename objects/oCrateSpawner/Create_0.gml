_crateLocations = [];

_instances = instance_number(oCrateSpawn);
for(var i = 0; i < _instances; i++) {
	_crateLocations[i] = instance_find(oCrateSpawn, i);
}

_crateActive = true;
_previousLocation = noone;