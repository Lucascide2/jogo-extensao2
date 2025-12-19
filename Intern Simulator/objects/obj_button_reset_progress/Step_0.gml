if (obj_main_menu.in_main_menu == 0) {
	var json_text, content, data, file;

	
	if (obj_menu_level_select.obj_selected == object_index) {
		if (keyboard_check_pressed(ord("Z"))) {
			global.level = option_text
			// Alterar
			
			data = load_json_file("progress.json")
			data[$ "days"] = [0, 0, 0, 0, 0, 0, 0, 0]
			json_text = json_stringify(data)
			file = file_text_open_write(working_directory +"progress.json")
			file_text_write_string(file, json_text);
			file_text_close(file);
			
			//global.go_to_menu_level_select = true
			room_goto(Menu)
		}
	}

}
