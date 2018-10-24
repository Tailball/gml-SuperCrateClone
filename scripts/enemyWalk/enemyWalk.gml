image_xscale = _direction;
	
var grounded = getGrounded();
applyForces(grounded, [_direction, 0]);
updatePosition();
		
if(place_meeting(x + _direction, y, oCollider)) {
	_direction *= -1;
}
		
if(_hp <= 0) {
	_state = enemyStates.dead;
	_vspd -= _jumpForce;
}