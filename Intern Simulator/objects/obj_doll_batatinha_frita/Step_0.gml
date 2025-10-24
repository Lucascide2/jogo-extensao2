if (!is_looking) {
	timer_ms += delta_time
	
	
	if (timer_ms > not_looking_time * 1000000) {
		timer_ms = 0		
		is_looking = true
		
		sprite_index = spr_player_idle_left
	}
} else {
	timer_ms += delta_time
	
	if (obj_playerAlt.x > starting_point and global.is_moving) obj_playerAlt.x = 220
	
	
	if (timer_ms > looking_time * 1000000) {
		timer_ms = 0
		is_looking = false
		
		sprite_index = spr_player_idle_right
		not_looking_time = choose(2, 3, 5, 6)
	}
	
	
}

