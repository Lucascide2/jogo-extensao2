if (is_available and obj_computer_screen.in_screen) {
	sprite_index = spr_computer_option
	
	if (obj_computer_screen.obj_selected == object_index) {
		if (keyboard_check_pressed(ord("Z"))) {
		// Pop-up de dica
		show_debug_message(object_get_name(object_index))
		}
	}

	
} else if (is_unlockable) {
	if (obj_computer_screen.obj_selected == self) {
		if (keyboard_check_pressed(ord("Z"))) {
			// Configurar início do minigame
		}
	}
}