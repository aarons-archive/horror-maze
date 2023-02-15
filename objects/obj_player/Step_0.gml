
#region Movement

var horizontal_input = keyboard_check(global.keyboard_right_key) - keyboard_check(global.keyboard_left_key)
var vertical_input = keyboard_check(global.keyboard_down_key) - keyboard_check(global.keyboard_up_key)

if (horizontal_input != 0 || vertical_input != 0) {
	var _direction = point_direction(0, 0, horizontal_input, vertical_input)
	x_movement = clamp(lengthdir_x(_speed, _direction), -MAX_SPEED, MAX_SPEED)
	y_movement = clamp(lengthdir_y(_speed, _direction), -MAX_SPEED, MAX_SPEED)
} 
else {
	x_movement = 0
	y_movement = 0
}
	
if (place_meeting(x + x_movement, y, obj_solid)) {
	while (not place_meeting(x + sign(x_movement), y, obj_solid)) {
		x += sign(x_movement)
	}
	x_movement = 0
}
if (place_meeting(x, y + y_movement, obj_solid)) {
	while (not place_meeting(x, y + sign(y_movement), obj_solid)) {
		y += sign(y_movement)
	}
	y_movement = 0
}

x += x_movement
y += y_movement

#endregion


#region Stamina
if (keyboard_check(global.run_key) and stamina_timer > 0) {
	_speed = RUN_SPEED
	is_running = true
}
else {
	_speed = NORMAL_SPEED
	is_running = false
}
#endregion


#region Markers
if (keyboard_check_pressed(global.place_marker_key) and marker_count > 0) {
	var marker = instance_create_layer(x, y, "marker_instances", obj_marker)
	marker.player = self
    marker_count -= 1
}
#endregion


#region Update Lighting
flash_light[| eLight.X] = x
flash_light[| eLight.Y] = y
flash_light[| eLight.Direction] = point_direction(x, y, mouse_x, mouse_y)
flash_light[| eLight.Flags] |= eLightFlags.Dirty
		
point_light[| eLight.X] = x
point_light[| eLight.Y] = y
point_light[| eLight.Flags] |= eLightFlags.Dirty
#endregion
