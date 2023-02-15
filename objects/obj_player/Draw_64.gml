draw_set_font(fnt_menu)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)

#region Marker UI
draw_sprite_ext(
	spr_marker, 0, 
	50, VIEW_HEIGHT - 50,
	3, 3, 0, c_white, 1
)
draw_text_color(
	80, VIEW_HEIGHT - 45,
	string(marker_count) + "/" + string(MARKER_COUNT), 
	c_white, c_white, c_white, c_white, 1
)
#endregion


#region Stamina UI
draw_sprite_ext(
	spr_run, 0, 
	50, VIEW_HEIGHT - 100,
	1, 1, 0, c_white, 1
)
draw_text_color(
	80, VIEW_HEIGHT - 95,
	string(stamina_timer) + "/" + string(STAMINA_TIMER), 
	c_white, c_white, c_white, c_white, 1
)
/*
draw_healthbar(
	(VIEW_WIDTH * 0.5) - 75, VIEW_HEIGHT - 50,
	(VIEW_WIDTH * 0.5) + 75, VIEW_HEIGHT,
	(stamina_timer / 20) * 100,
	c_black, c_red, c_white, 0, true, false
)
*/
#endregion


