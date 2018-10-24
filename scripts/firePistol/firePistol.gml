var bullet = instance_create_layer(x + 2 * image_xscale, y - 1, "bullets", oBullet);
bullet._speed = _bulletSpeed;
bullet._angle = random_range(-2.5, 2.5);
bullet._direction = image_xscale;
bullet._parent = "pistol";
bullet.image_xscale = image_xscale;
		
audio_sound_pitch(sfxShot, random_range(0.6, 1.1));
audio_play_sound(sfxShot, 8, false);