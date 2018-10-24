var guiwidth = display_get_gui_width();
var guiheight = display_get_gui_height();

if(_gameState == gameStates.idle) {
	var txt = "press any key to start";
	var offset = 3;
	
	draw_set_font(fGUILarge);
	draw_set_halign(fa_center);
	
	draw_set_color(c_black);
	draw_text(guiwidth / 2 + offset, guiheight / 2 + offset, txt);
	draw_text(guiwidth / 2 - offset, guiheight / 2 - offset, txt);
	draw_text(guiwidth / 2 + offset, guiheight / 2 - offset, txt);
	draw_text(guiwidth / 2 - offset, guiheight / 2 + offset, txt);
	
	draw_set_color(c_white);
	draw_text(guiwidth / 2 + offset, guiheight / 2, txt);
}

if(_gameState == gameStates.countdown) {
	var txt = string(_countdown);
	var offset = 3;
	
	draw_set_font(fGUICountdown);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_set_color(c_black);
	draw_text_transformed(guiwidth / 2 + offset, guiheight / 2 + offset, txt, _countdownscale, _countdownscale, image_angle);
	draw_text_transformed(guiwidth / 2 - offset, guiheight / 2 - offset, txt, _countdownscale, _countdownscale, image_angle);
	draw_text_transformed(guiwidth / 2 + offset, guiheight / 2 - offset, txt, _countdownscale, _countdownscale, image_angle);
	draw_text_transformed(guiwidth / 2 - offset, guiheight / 2 + offset, txt, _countdownscale, _countdownscale, image_angle);
	
	draw_set_color(c_white);
	draw_text_transformed(guiwidth / 2, guiheight / 2, txt, _countdownscale, _countdownscale, image_angle);
}