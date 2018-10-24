var bullet = instance_create_layer(x + 5 * image_xscale, y - 1, "bullets", oBullet);
bullet._speed = _bulletSpeed;
bullet._damage = 9;
bullet._angle = random_range(-1, 1);
bullet._direction = image_xscale;
bullet._livesAfterKill = true;
bullet._parent = "sniper rifle";
bullet.image_xscale = image_xscale;
		
audio_sound_pitch(sfxSniper, random_range(0.85, 1.00));
audio_play_sound(sfxSniper, 8, false);