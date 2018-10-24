repeat(4) {
	var bullet = instance_create_layer(x + 2 * image_xscale, y - 1, "bullets", oBullet);
	
	bullet._speed = _bulletSpeed - random_range(0, 3.5);
	bullet._angle = random_range(-8, 8);	
	bullet._life = _bulletLife;
	bullet._damage = 2;
	
	bullet._direction = image_xscale;
	bullet.image_xscale = image_xscale;
	bullet.image_xscale = bullet.image_xscale * _bulletSize;
	bullet.image_yscale = bullet.image_yscale * _bulletSize;
	
	bullet._parent = "shotgun";
}

fireKnockback(12);

audio_sound_pitch(sfxShotgun, random_range(0.75, 0.9));
audio_play_sound(sfxShotgun, 8, false);