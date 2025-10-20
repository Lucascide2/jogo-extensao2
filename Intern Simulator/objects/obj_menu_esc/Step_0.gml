if (is_active) {
	if (keyboard_check_pressed(vk_down)) {
		if (option + 1 <= num_options) {
			show_debug_message("teste")
			option += 1
			obj_selected = get_object_by_option(option)
		}
	} else if (keyboard_check_pressed(vk_up)){
		if (option - 1 > 0) {
			option -= 1
			obj_selected = get_object_by_option(option)
		}
	}
} 