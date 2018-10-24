var bullet = instance_create_layer(x + 12 * image_xscale, y - 3, "bullets", oBullet);

bullet._speed = _bulletSpeed;
bullet._angle = random_range(-6.5, 6.5);

bullet._damage = 0.5;
bullet._direction = image_xscale;
bullet.image_xscale = image_xscale;

bullet.image_xscale = bullet.image_xscale * _bulletSize;
bullet.image_yscale = bullet.image_yscale * _bulletSize;

bullet._parent = "uzi";

fireKnockback(1.5);
		
audio_sound_pitch(sfxShot, random_range(0.90, 1.15));
audio_play_sound(sfxShot, 8, false);