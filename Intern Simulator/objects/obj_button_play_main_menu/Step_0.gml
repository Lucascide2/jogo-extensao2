var v1 = obj_main_menu.in_main_menu and obj_main_menu.button_option == 1 and keyboard_check_pressed(ord("Z"))
var v2 = global.go_to_menu_level_select == true
if (v1 or v2) {
	global.go_to_menu_level_select = false
	obj_main_menu.in_main_menu = false

	// 📸 Atualiza a posição da câmera
	camera_set_view_pos(view_camera[0], 700, 0);
}