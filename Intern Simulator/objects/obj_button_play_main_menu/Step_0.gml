if (obj_main_menu.in_main_menu and obj_main_menu.button_option == 1) {
	if (keyboard_check_pressed(ord("Z"))) {
		obj_main_menu.in_main_menu = false

		// 📸 Atualiza a posição da câmera
		camera_set_view_pos(view_camera[0], 700, 0);
		
	}
}