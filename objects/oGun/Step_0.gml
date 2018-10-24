switch(oPlayer._gameState) {
	
	case gameStates.playing:
	
		//Decrease shot timer
		_shotTimer--;
		_shotTimer = max(0, _shotTimer);

		//Gun positioning
		if(instance_exists(oPlayer)) {
			image_xscale = oPlayer.image_xscale;
			x = oPlayer.x + (_locX * image_xscale);
			y = oPlayer.y + _locY;
		}

		//Fire shot
		if(_shotTimer <= 0) { 
			if(canFiregun(object_index)) {
				
				script_execute(_fireweapon);
		
				_shotTimer = _shotSpeed;
				screenShake(_screenShake[0], _screenShake[1], _screenShake[2]);
			}
		}
		
		break;
}

_showGunCountDown = max(--_showGunCountDown, 0);