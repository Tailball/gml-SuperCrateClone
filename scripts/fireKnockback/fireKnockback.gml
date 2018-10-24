///@arg knockback amount
var _kA = argument0;


with(oPlayer) {
	if(place_meeting(x + _kA * -image_xscale, y, oCollider)) {
		while(!place_meeting(x + -image_xscale, y, oCollider)) {
			x += -image_xscale;
		}
	}
	else {
		oPlayer.x += _kA * -image_xscale;
	}
}