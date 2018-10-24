if(oPlayer._gameState != gameStates.playing) {
	image_speed = 0;
	return;
}

switch (_state) {

	case enemyStates.walking:
		enemyWalk();
		break;
		
	case enemyStates.dead:
		enemyDead();
		break;

}

_hitMarker = max(0, --_hitMarker);