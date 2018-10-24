_life--;
if(_life < 0) {
	instance_destroy();
}

x += lengthdir_x(_speed, _angle) * _direction;
y += lengthdir_y(_speed, _angle);

image_angle = _angle * _direction;