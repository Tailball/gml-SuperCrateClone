if(instance_exists(oPlayer) && oPlayer._gameState == gameStates.playing) {
	if(_c._enemiesSpawned < _c._maxEnemiesInGame) {
		var rand = random(1);
		var enemyToSpawn = rand > 0.30 ? oEnemyGreen : oEnemyLargeGreen;
		
		instance_create_layer(x, y, "enemies", enemyToSpawn);
		_c._enemiesSpawned++;
	}
}

alarm[0] = _c._enemySpawnRate;