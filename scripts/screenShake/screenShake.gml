///@arg amount-of-shake-x
///@arg amount-of-shake-y
///@arg duration-of-shake

var _amountX = argument0;
var _amountY = argument1;
var _duration = argument2;

if(instance_exists(oCamera)) {
	oCamera._screenshakeX = _amountX;
	oCamera._screenShakeY = _amountY;
	oCamera._screenshakeDuration = _duration;
}