switch(_gameState) {
	
	#region IDLE
		case gameStates.idle:
			if(sprite_index != sPlayerIdle) {
				image_index = 0;
			}
			sprite_index = sPlayerIdle;
			
			if(keyboard_check_pressed(vk_anykey))
				_gameState = gameStates.countdown;
		break;
	#endregion
	
	#region COUNTDOWN
		case gameStates.countdown:
			_countdownscale += 0.02;
			if(_countdownscale > 1) {
				_countdownscale = 0;
				_countdown--;
			}
			
			if(_countdown == 0) {
				_gameState = gameStates.playing;
			}
		break;
	#endregion
	
	#region MOVING
		case gameStates.playing:
			var grounded = getGrounded();
			var input = getInput();
			applyForces(grounded, input);
			setSprites(grounded, input);
			updatePosition();
		break;
	#endregion
	
	#region DEAD
		case gameStates.gameOver:
			setSprites(false, [0, 0]);
			playerDead();
			break;
	#endregion
		
	#region DEFAULT
		default:
			break;
	#endregion
	
}