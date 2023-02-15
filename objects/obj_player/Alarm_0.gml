alarm[0] = room_speed

if (is_running == true) {
	if (stamina_timer <= 0) {
		is_running = false
		return
	} 
	stamina_timer -= 1
}
else {
	if (stamina_timer >= 20) {
		return
	} 
	stamina_timer += 1
}