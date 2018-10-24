///@arg gun to fire

var oName = object_get_name(argument0);
if(oName == "oGunPistol" || oName == "oGunDoublePistol" || oName == "oGunShotgun" || oName == "oGunSniperRifle" || oName == "oGunRevolver") { 
	return (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_control))
}

if(oName == "oGunMachinegun" || oName == "oGunUzi") {
	return (mouse_check_button(mb_left) || keyboard_check(vk_shift) || keyboard_check(vk_control));
}