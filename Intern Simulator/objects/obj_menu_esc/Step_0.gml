
if (keyboard_check_pressed(vk_escape) and !global.pause) { // Acessa o menu esc
	
	/* 
	if (instance_exists(obj_playerAlt)){
			if (obj_playerAlt.able_to_interact) {
				global.pause = true
		
				//obj_playerAlt.able_to_interact = false
				//obj_playerAlt.able_to_move = false
			}
	} else if (instance_exists(obj_player1)) {
		
		
		//testing
		//global.pause = true
		obj_player1.able_to_move = false
	}
	*/
	global.pause = true
}	



if (global.pause) {
	if (keyboard_check_pressed(vk_down)) {
		if (option + 1 <= num_options) {
			option += 1
			obj_selected = get_object_by_option(option)
		}
	} else if (keyboard_check_pressed(vk_up)){
		if (option - 1 > 0) {
			option -= 1
			obj_selected = get_object_by_option(option)
		}
	}
} 