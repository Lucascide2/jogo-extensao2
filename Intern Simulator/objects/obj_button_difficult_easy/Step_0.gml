var data, json_text, file;
var v1 = obj_main_menu.in_main_menu == 2 and obj_menu_difficult_select.option == 1 and keyboard_check_pressed(ord("Z"))

if (v1) {
	global.go_to_menu_level_select = true
	obj_main_menu.in_main_menu = 0
	
	global.days_data[0] += 1
	show_debug_message(global.days_data)
	data = load_json_file("progress.json")	
	data[$ "days"] = global.days_data
	data[$ "difficult"] = "easy"
	json_text = json_stringify(data)
	file = file_text_open_write(working_directory +"progress.json")
	file_text_write_string(file, json_text);
	file_text_close(file);

	// 📸 Atualiza a posição da câmera
	room_goto(Menu);
}