if (global.in_screen) {
	if (is_available) {
		sprite_index = spr_computer_option
	
		if (obj_computer_screen.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
				obj_computer_screen.tip_number = tip_number
			// Pop-up de dica
			show_debug_message(object_get_name(object_index))
			}
		}
	} else if (is_unlockable) {
		sprite_index = spr_computer_option_unlockable
		
		if (obj_computer_screen.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
				keyboard_clear(ord("Z"))
				global.in_screen = false
				room_goto(room_to_go)
			}
		}
	}


	if (obj_computer_screen.tip_number == tip_number) {
		if (keyboard_check_pressed(vk_down)) idx_tip = min(idx_tip + 1, array_length(tip_text_array) - 1)
		else if (keyboard_check_pressed(vk_up)) idx_tip = max(idx_tip - 1, 0)
	}
}

