var bullet = instance_create_layer(x + 2 * image_xscale, y - 1, "bullets", oBullet);
bullet._speed = _bulletSpeed;
bullet._damage = 3.5;
bullet._angle = random_range(-2, 2);
bullet._direction = image_xscale;
bullet._parent = "revolver";
bullet.image_xscale = image_xscale;
		
audio_sound_pitch(sfxRevolver, random_range(0.85, 1.05));
audio_play_sound(sfxRevolver, 8, false);