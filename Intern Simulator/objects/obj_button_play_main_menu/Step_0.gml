var v1 = obj_main_menu.in_main_menu == 1 and obj_main_menu.button_option == 1 and keyboard_check_pressed(ord("Z"))
var v2 = global.go_to_menu_level_select == true
var v3 = array_equals (global.days_data, [0, 0, 0, 0, 0 , 0, 0, 0])

if(v1 and v3) {
	// 📸 Atualiza a posição da câmera
	camera_set_view_pos(view_camera[0], 1300, 0);
	obj_main_menu.in_main_menu = 2
	
} else if (v1 or v2) {
	global.go_to_menu_level_select = false
	obj_main_menu.in_main_menu = 0

	// 📸 Atualiza a posição da câmera
	camera_set_view_pos(view_camera[0], 700, 0);
}