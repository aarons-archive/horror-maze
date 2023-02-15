
draw_set_font(fnt_menu)
draw_set_halign(fa_left)
draw_set_valign(fa_top)


var menu = menu_pages[menu_page]
var menu_height = ds_grid_height(menu)


var menu_start_x = 30
var option_offset_y = 40
var option_start_x = menu_start_x * 2
var option_start_y = (room_height / 2) - ((menu_height * option_offset_y) / 2) + 30
var shift_option_offset = 150


for (var i = 0; i < menu_height; i++) {
	
	if (menu_selected_elements[menu_page] == i) { draw_set_color(c_yellow) } else { draw_set_color(c_white) }
	draw_text(
		option_start_x, 
		option_start_y + (i * option_offset_y), 
		menu[# 0, i]
	)
	
	switch (menu[# 1, i]) {

		// Shift element
		case MenuElement.Shift:
		
			var colour
			var left_shift
			var right_shift
			
			if (menu_selected_elements[menu_page] == i) { 
				if (menu_inputting) { 
					colour = c_lime 
				} else { 
					colour = c_white 
				} 
			} else { 
				colour = c_ltgray 
			}
			
			var current_value = menu[# 3, i]
			
			if (current_value != 0) { left_shift = "<<" } else { left_shift = "" } 
			if (current_value != array_length(menu[# 4, i]) - 1) { right_shift = ">>" } else { right_shift = "" }
			
			draw_text_color(
				option_start_x + shift_option_offset, 
				option_start_y + (i * option_offset_y), 
				left_shift + menu[# 4, i][current_value] + right_shift,
				colour, colour, colour, colour, 
				1
			)
			break
	}
}
