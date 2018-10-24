if(other._state == enemyStates.dead)
	return;

if(_gameState != gameStates.gameOver) {
	_gameState = gameStates.gameOver;
	_state = heroStates.dead;
	
	_hitDirection = other._direction;
	_vspd -= _jumpForce;
	
	game_set_speed(20, gamespeed_fps);
}
