if (!obj_main_menu.in_main_menu) {
	if (keyboard_check_pressed(vk_escape)) {
		obj_main_menu.in_main_menu = true
		
		// 📸 Atualiza a posição da câmera
		camera_set_view_pos(view_camera[0], 0, 0);
	}
}