
if (start_dialogue) {
	obj_playerAlt.able_to_move = false;
	
	// Checa se é necessário um input do usuário
	if (dialogue_text[current_dialogue_index] == "<INPUT>") {
		if (in_input == false) {
			in_input = true;
			keyboard_string = "";
		} 
		
		
		if (keyboard_check_pressed(vk_escape)) {
			
			current_dialogue_index = 0
			start_dialogue = false;
			in_input=false
			
			//is_active = true;
			
			obj_playerAlt.able_to_move = true
			obj_playerAlt.able_to_interact = true
			
			keyboard_clear(vk_escape)
			
			
		} else if (keyboard_check_pressed(vk_enter) and input_text == correct_answer) {
			current_dialogue_index += 1
			display_text = ""
			in_input = false
			
			var inst_task = instance_nearest(x, y, obj_task);		
			inst_task.visible = false;
		} else {
			var text_max_size = 180
			if (string_length(keyboard_string)  > text_max_size) keyboard_string = string_copy(keyboard_string, 1, text_max_size)
			show_debug_message(string_length(keyboard_string))
				
			var c = keyboard_string
			input_text = string_trim(c) 
		}
		
	} else {
		if (!done) {
			timer += 1;
			if (timer >= text_speed) {
			    timer = 0;
				show_debug_message(text_index)
			    if (text_index < string_length(dialogue_text[current_dialogue_index])) {	
			        text_index += 1;
			        display_text = string_copy(dialogue_text[current_dialogue_index], 1, text_index);
			    } else {
					done = true;
				}
			}
		}
	
		if (keyboard_check_pressed(ord("Z")) and done)
		{
			if ((current_dialogue_index + 1) < num_dialogues)  {
				current_dialogue_index += 1;
			} else {
				current_dialogue_index = 0
				start_dialogue = false;
			
				is_active = false;
				obj_playerAlt.able_to_move = true
				obj_playerAlt.able_to_interact = true
			}
		
			timer = 0;
			done = false;
			text_index = 0;
			
			keyboard_clear(ord("Z"))
		}	
	}
	

}