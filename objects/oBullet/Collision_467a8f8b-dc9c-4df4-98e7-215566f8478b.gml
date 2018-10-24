if(other._state == enemyStates.walking) {
	if(!_livesAfterKill)
		instance_destroy();

	with(other) {
		if(_hitMarker <= 0 && other._parent == "sniper rifle") {
			_hp -= other._damage;
			_hitMarker = 5;
		} 
		
		if(other._parent != "sniper rifle") {
			_hp -= other._damage;
			_hitMarker = 5;
		}
		
		_hitDirection = other._direction;

	
		if(_hp > 0) {
			if(place_meeting(x + 6 * _hitDirection, y, oCollider)) {
				while(!place_meeting(x + sign(_hitDirection), y, oCollider)) {
					x += sign(_hitDirection);
				}
			}
			else {
				x += 6 * _hitDirection;
			}
		}
	}

	audio_sound_pitch(sfxHit, random_range(0.7, 1.3));
	audio_play_sound(sfxHit, 7, false);
}