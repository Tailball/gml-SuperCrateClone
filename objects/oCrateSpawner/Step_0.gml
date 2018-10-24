if(_crateActive == false) {
	var rnd = irandom_range(0, _instances - 1);
	var spawn = _crateLocations[rnd];
		
	if(_previousLocation != noone) {
		while(spawn == _previousLocation) {
			rnd = irandom_range(0, _instances - 1);
			spawn = _crateLocations[rnd];
		}
	}
	
	 instance_create_layer(spawn.x, spawn.y, "crates", oCrate);
	 _previousLocation = spawn;
	
	_crateActive = true;
}