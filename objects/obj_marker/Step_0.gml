image_xscale = scale
image_yscale = scale

var mouse_is_near_marker = point_in_circle(mouse_x, mouse_y, x, y, 15)
var player_is_near_marker = point_in_circle(player.x, player.y, x, y, 50)
var player_is_holding_grab_key = keyboard_check(global.grab_key)

if (mouse_is_near_marker and player_is_near_marker) {
	scale = lerp(scale, 1.5, 0.2)
	draw_tip = true
	if (player_is_holding_grab_key) {
		instance_destroy(self)
		player.marker_count += 1
	}
}
else {
	scale = lerp(scale, 1, 0.2)
	draw_tip = false
}
