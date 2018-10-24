if(_gameState = gameStates.playing) {
	
	instance_destroy(other);
	
	oCrateSpawner._crateActive = false;
	oController._cratesCollected++;

	if(oController._cratesCollected % 5 == 0) {
		oController._maxEnemiesInGame++;
	}

	var selectedGun = noone;
	if(_currentGun != noone) {
		do {
			selectedGun = choose(oGunPistol, 
								 oGunShotgun, 
								 oGunDoublePistol, 
								 oGunMachinegun, 
								 oGunUzi,
								 oGunSniperRifle,
								 oGunRevolver);
		} 
		until(object_get_name(_currentGun.object_index) != object_get_name(selectedGun))
		
		instance_destroy(_currentGun);

	}
	else {
		selectedGun = oGunPistol;
	}
	
	var gunInstance = instance_create_layer(x, y, "weapons", selectedGun);
	_currentGun = gunInstance;
	audio_play_sound(sfxObtainGun, 9, false);
	
}