///@arg Grounded bool
///@arg Input array[xaxis, jump]

var grounded = argument0;
var input = argument1;
var axisX = input[0];

//ADJUSTING SPRITE
if(_gameState == gameStates.playing) {
	if(!grounded) {
		if(_vspd < 0) _state = heroStates.jumping;
		else _state = heroStates.falling;
	}
	else {
		if(axisX != 0) _state = heroStates.running;
		else _state = heroStates.idle;
	}
}

image_xscale = axisX == 0 ? image_xscale : axisX;
			
switch(_state) {
	case heroStates.idle:
		if(sprite_index != sPlayerIdle) {
			image_index = 0;
		}
		
		sprite_index = sPlayerIdle;
	break;
				
	case heroStates.running:
		if(sprite_index != sPlayerRun) {
			image_index = 0;
		}
		
		sprite_index = sPlayerRun;
	break;
				
	case heroStates.jumping:
	case heroStates.falling:
		if(sprite_index != sPlayerJump) {
			image_index = 0;
		}
		
		if(_vspd > 0) {
			image_index = 2;
		}
		
		sprite_index = sPlayerJump;
	break;
	
	case heroStates.dead:
		sprite_index = sPlayerJump;
		image_index = 1;
	break;
		
	default:
	break;
}