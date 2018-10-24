//VERTICAL MOVEMENT CHECKS AND POSITIONING
_vspd = clamp(_vspd, -_jumpForce, _maxVspd);
if(_vspd <= _threshold && _vspd >= -_threshold)
	_vspd = 0;
if(place_meeting(x, y + _vspd, oCollider)) {
	while(!place_meeting(x, y + sign(_vspd), oCollider)) {
		y += sign(_vspd);
	}
				
	_vspd = 0;
}

y += _vspd;
	

//HORIZONTAL MOVEMENT CHECKS AND POSITIONING
_hspd = clamp(_hspd, -_maxHspd, _maxHspd);
if(_hspd <= _threshold && _hspd >= -_threshold)
	_hspd = 0;
if(place_meeting(x + _hspd, y, oCollider)) {
	while(!place_meeting(x + sign(_hspd), y, oCollider)) {
		x += sign(_hspd);
	}
				
	_hspd = 0;
}
	
x += _hspd;
