if (!obj_main_menu.in_main_menu) {
	if (is_available) {
		sprite_index = spr_computer_option
	
		if (obj_menu_level_select.obj_selected == object_index) {
			if (keyboard_check_pressed(ord("Z"))) {
				global.level = option_text
				room_goto(Escritorio)
			}
		}
	}
}
