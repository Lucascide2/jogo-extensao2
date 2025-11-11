if (global.pause) {
	show_debug_message("pausado")
	image_speed = 0
	exit
} else {
	image_speed = 1
}

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
			var c = keyboard_string
			input_text = c
		}
		
	} else {
		if (!done) {
			timer += 1;
			if (timer >= text_speed) {
			    timer = 0;
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