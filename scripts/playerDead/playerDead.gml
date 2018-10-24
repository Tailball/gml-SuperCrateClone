_hspd = _hitDirection * 2;
if(place_meeting(x + _hspd, y, oCollider)) {
	while(!place_meeting(x + _hitDirection, y, oCollider)) {
		x += _hitDirection;
	}
				
	_hspd = 0;
}
x += _hspd;
			
_vspd += _grav;
if(place_meeting(x, y + _vspd, oCollider)) {
	while(!place_meeting(x, y + sign(_vspd), oCollider)) {
		y += sign(_vspd);
	}
				
	_vspd = 0;
}
y += _vspd;
			
if(getGrounded()) {
	if(!alarm[0])
		alarm[0] = 50;
}