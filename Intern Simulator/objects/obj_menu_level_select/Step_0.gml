if (!obj_main_menu.in_main_menu) {
	if (keyboard_check_pressed(vk_escape)) {
		obj_main_menu.in_main_menu = true
		
		// 📸 Atualiza a posição da câmera
		camera_set_view_pos(view_camera[0], 0, 0);
	} else if (keyboard_check_pressed(vk_left)) {
		new_option = option - 1
		if (new_option == 0 or new_option == 4) {
			new_option = -1
		}
	} else if (keyboard_check_pressed(vk_right)) {
		new_option = option + 1
		if (new_option == 5 or new_option == 9) {
			new_option = -1
		}	
	} else if (keyboard_check_pressed(vk_up)) {
		new_option = option - 4
		if (new_option < 0) {
			new_option = -1
		}	
	}  else if (keyboard_check_pressed(vk_down)) {
		new_option = option + 4
		if (new_option > 8) {
			new_option = -1
		}	
	}
	
	if (new_option != -1) {
		option = new_option
		
		
		switch (option) {
			case 1:
				obj_selected = obj_button_level_menu_level_select_1
				break
			case 2:
				obj_selected = obj_button_level_menu_level_select_2
				break
			case 3:
				obj_selected = obj_button_level_menu_level_select_3
				break
			case 4:
				obj_selected = obj_button_level_menu_level_select_4
				break
			case 5:
				obj_selected = obj_button_level_menu_level_select_5
				break
			case 6:
				obj_selected = obj_button_level_menu_level_select_6
				break
			case 7:
				obj_selected = obj_button_level_menu_level_select_7
				break
			case 8:
				obj_selected = obj_button_level_menu_level_select_8
				break
		}
		
		new_option = -1
	}	
}