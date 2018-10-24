var bullet = instance_create_layer(x + 12 * image_xscale, y - 3, "bullets", oBullet);

bullet._speed = _bulletSpeed;
bullet._angle = random_range(-4.75, 4.75);

bullet._direction = image_xscale;
bullet.image_xscale = image_xscale;

bullet.image_xscale = bullet.image_xscale * _bulletSize;
bullet.image_yscale = bullet.image_yscale * _bulletSize;

bullet._parent = "machinegun";

fireKnockback(3.5);
		
audio_sound_pitch(sfxShot, random_range(0.55, 0.75));
audio_play_sound(sfxShot, 8, false);