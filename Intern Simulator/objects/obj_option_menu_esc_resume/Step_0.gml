if (global.pause) {
	//visible = true

	if (obj_menu_esc.obj_selected == object_index) {
		if (keyboard_check_pressed(ord("Z"))) {
		// Pop-up de dica
			global.pause = false
			keyboard_clear(ord("Z"));
			
		}
	}
} else {
	//visible = false
}

