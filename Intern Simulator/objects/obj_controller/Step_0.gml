
if (room == Office_3) {
	// Checando se a fase foi completa
	var json_text, content, data, file, check = true;
	
	// Checando se todos os npcs da sala estão desativos
	for (var i = 0; i < array_length(active_npcs_names); i ++) {
		if (asset_get_index("obj_" + active_npcs_names[i]).is_active) {
			check = false
			break
		}  
	}
	
	if (
		check and
		!on_test
	) {

		for (var i = 0; i < 8; i++) {
			if fase == "day_" + string(i + 1) {
			
				if (i != 3) {
					global.days_data[i+1] += 1
				}
			
				data = load_json_file("progress.json")
			
				data[$ "days"] = global.days_data
			
				json_text = json_stringify(data)
			
				file = file_text_open_write(working_directory +"progress.json")
				file_text_write_string(file, json_text);
				file_text_close(file);
			
				global.go_to_menu_level_select = true
				room_goto(Menu)
				
				break
			}
		}
	}
} else {
	// Lógica caso seja em outra sala
}



/*
if (timer > 0) {
    timer -= 1;
} else {
    show_message("Game Over!"); 
    room_restart();
}
*/