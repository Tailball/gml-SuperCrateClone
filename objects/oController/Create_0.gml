enum enemyStates {
	walking,
	dead
}

enum gameStates {
	idle,
	countdown,
	playing,
	gameOver
}

enum heroStates {
	idle,
	running,
	falling,
	jumping,
	dead
}

_enemiesSpawned = 0;
_enemySpawnRate = 45;
_maxEnemiesInGame = 6;
_cratesCollected = -1;

randomize();
game_set_speed(60, gamespeed_fps);
room_goto(rmGame);