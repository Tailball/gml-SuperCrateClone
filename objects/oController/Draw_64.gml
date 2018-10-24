if(instance_exists(oPlayer) && (oPlayer._gameState == gameStates.playing || oPlayer._gameState == gameStates.gameOver)) {
	draw_set_font(fGUISmall);
	draw_set_halign(fa_left);
	var txt = "Crates collected: " + string(_cratesCollected);
	
	draw_set_color(c_black);
	draw_text (34, 34, txt);
	
	draw_set_color(c_white);
	draw_text(32, 32, txt);
}