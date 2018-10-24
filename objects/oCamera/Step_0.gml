if(_follow == noone)
	return;
	
x = lerp(x, _follow.x + (35 * _follow.image_xscale), _latency);
y = lerp(y, _follow.y, _latency);

if(_screenshakeDuration > 0) {
	_screenshakeDuration = max(--_screenshakeDuration, 0);
	
	x += choose(-_screenshakeX, _screenshakeX);
	y += choose(-_screenshakeY, _screenshakeY);
}

x = clamp(x, 0 + _vWidthHalf, room_width - _vWidthHalf);
y = clamp(y, 0 + _vHeightHalf, room_height - _vHeightHalf);

var view_lookat = matrix_build_lookat(x, y, -1, x, y, 0, 0, 1, 0);
camera_set_view_mat(_camera, view_lookat);