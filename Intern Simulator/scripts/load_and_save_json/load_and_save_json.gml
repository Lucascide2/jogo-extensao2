function load_json_file(file_name){
	var runtime_path;
	
	if (file_exists(game_save_id + file_name)) runtime_path = game_save_id + file_name
	else runtime_path = file_name
	
	//show_debug_message(runtime_path)
	
	var json_text = file_text_open_read(runtime_path); 


	var content = ""; 
	while (!file_text_eof(json_text)) {
		content += file_text_read_string(json_text); 
		file_text_readln(json_text); 
	} 
	file_text_close(json_text); 

	var data = json_parse(content);
	
	return data
	
}

/// Salvar alterações
function save_json_file(file_name, data) {
	var json_text = json_stringify(data)
			
	var file = file_text_open_write(game_save_id +"progress.json")
	file_text_write_string(file, json_text);
	file_text_close(file);
}