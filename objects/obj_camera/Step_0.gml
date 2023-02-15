if (instance_exists(follow)) {
	to_x = follow.x
	to_y = follow.y
}

x += (to_x - x) / 2
y += (to_y - y) / 2

x = clamp(x, half_view_width, room_width - half_view_width)
y = clamp(y, half_view_height, room_height - half_view_height)

camera_set_view_pos(camera, x - half_view_width, y - half_view_height)
