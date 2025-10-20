if (!obj_main_menu.in_main_menu) {
	if (is_available) {
		sprite_index = spr_computer_option
	
		if (obj_menu_level_select.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
			// Pop-up de dica
			show_debug_message(object_get_name(object_index))
			}
		}
	} else if (is_unlockable) {
		sprite_index = spr_computer_option_unlockable
		
		if (obj_menu_level_select.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
				// Configurar início da fase
			}
		}
	}

}

