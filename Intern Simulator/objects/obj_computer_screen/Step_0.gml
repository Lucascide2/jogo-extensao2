if (in_screen) {
	if (keyboard_check_pressed(vk_escape)) {
		in_screen = false;
		obj_camera_controller.following = true;
		obj_player.able_to_move = true;
		obj_player.able_to_interact = true;
	}
}