if (global.in_screen) {
	if (is_available) {
		sprite_index = spr_computer_option
	
		if (obj_computer_screen.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
			// Pop-up de dica
			show_debug_message(object_get_name(object_index))
			}
		}
	} else if (is_unlockable) {
		sprite_index = spr_computer_option_unlockable
		
		if (obj_computer_screen.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
				keyboard_clear(ord("Z"))
				room_goto(room_to_go)
			}
		}
	}

}

