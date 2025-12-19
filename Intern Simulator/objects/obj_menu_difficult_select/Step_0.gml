if (obj_main_menu.in_main_menu == 2) {
	if (keyboard_check_pressed(vk_escape)) {
		obj_main_menu.in_main_menu = 1
		
		// 📸 Atualiza a posição da câmera
		camera_set_view_pos(view_camera[0], 0, 0);
	} else 	if (keyboard_check_pressed(vk_down)) {
		option = min(option + 1, num_buttons)
		has_pressed_key = true
	} else if (keyboard_check_pressed(vk_up)) {
		option = max(option - 1, 1)
		has_pressed_key = true
	}
	
	if (has_pressed_key) {
		current_button = get_object_by_option(option)
		
		obj_button_selector_difficult.x = current_button.x-2
		obj_button_selector_difficult.y = current_button.y-2
		
		has_pressed_key = false
	}
	
}