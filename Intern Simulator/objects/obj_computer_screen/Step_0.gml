if (global.in_screen) {
	// Sair da tela do computador
	if (keyboard_check_pressed(vk_escape)) {
		global.in_screen = false;
		global.leaving_computer = true
		
		// Alterar
		room_goto(Office_3)
		//obj_camera_controller.following = true;
		//obj_player.able_to_move = true;
		//obj_player.able_to_interact = true;
		
		keyboard_clear(vk_escape)
	}
	



	// Lógica de controle das opções
	if keyboard_check_pressed(vk_up){
		new_option = option - 1
		if (new_option != 0 and new_option != 4) {
			option = new_option
			is_key_pressed = true
		} 
	} else if keyboard_check_pressed(vk_down) {
		new_option = option + 1
		if (new_option != 5 and new_option != 9) {
			option = new_option 
			is_key_pressed = true
		} 
	} else if keyboard_check_pressed(vk_left) {
		new_option = option - 4
		if (new_option > 0) {
			option = new_option 
			is_key_pressed = true
		} 
	} else if keyboard_check_pressed(vk_right) {
		new_option = option + 4
		if (new_option < 9) {
			option = new_option 
			is_key_pressed = true
		} 
	}		

 

	if (is_key_pressed) {

		switch (option)
		{
			case 1:
				obj_selected = obj_computer_option_1;
				break;
			case 2:
				obj_selected = obj_computer_option_2;
				break;
			case 3:
				obj_selected = obj_computer_option_3;
				break;
			case 4:
				obj_selected = obj_computer_option_4;
				break;
			case 5:
				obj_selected = obj_computer_option_5;
				break;
			case 6:
				obj_selected = obj_computer_option_6;
				break;
			case 7:
				obj_selected = obj_computer_option_7;
				break;
			case 8:
				obj_selected = obj_computer_option_8;
				break;
		
		}
	
		is_key_pressed = false
	}	

}



