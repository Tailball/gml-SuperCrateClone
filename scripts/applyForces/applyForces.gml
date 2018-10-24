///@arg Grounded bool
///@arg Movement array[xaxis, jump]

var grounded = argument0;
var input = argument1;

var axisX = input[0];
var up = input[1];

//FALLING & JUMPING
if(!grounded) {				
	_vspd += _grav;
		
	if(_canDoubleJump && up) {
		_canDoubleJump = false;
		_vspd = -_jumpForce;
		
		audio_sound_pitch(sfxJump, choose(1, 1.1, 1.15));
		audio_play_sound(sfxJump, 6, false);
	}
}
else {
	_canDoubleJump = true;
		
	if(up) {
		_vspd = -_jumpForce;
		
		audio_sound_pitch(sfxJump, choose(0.85, 0.9, 1));
		audio_play_sound(sfxJump, 6, false);
	}
}
	
//MOVING LEFT & RIGHT
if(axisX != 0) {
	_hspd += _accSpd * axisX;	
}
else {
	_hspd = lerp(_hspd, 0, _decSpd);
}