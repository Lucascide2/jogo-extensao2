if (obj_menu_esc.is_active) {
	//visible = true

	if (obj_menu_esc.obj_selected == object_index) {
		if (keyboard_check_pressed(ord("Z"))) {
		// Pop-up de dica
			obj_menu_esc.is_active = false
			obj_player.able_to_interact = true
			obj_player.able_to_move = true
			
			keyboard_clear(ord("Z"));
			
		}
	}


} else {
	//visible = false
}

