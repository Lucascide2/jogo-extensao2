if (in_main_menu) {
	if (keyboard_check_pressed(vk_down)) {
		button_option = min(button_option + 1, num_buttons)
		has_pressed_key = true
	} else if (keyboard_check_pressed(vk_up)) {
		button_option = max(button_option - 1, 1)
		has_pressed_key = true
	}
	
	if (has_pressed_key) {
		current_button = get_object_by_option(button_option)
		
		obj_button_selector_main_menu.x = current_button.x-2
		obj_button_selector_main_menu.y = current_button.y-2
		
		has_pressed_key = false
	}
}