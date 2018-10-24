if(_showGunCountDown > 0) {
	draw_set_font(fGUISmall);
	
	draw_set_color(c_black);
	draw_text((display_get_gui_width() / 2) + 2, 32, _name);
	
	draw_set_color(c_white);
	draw_text((display_get_gui_width() / 2), 30, _name);
}