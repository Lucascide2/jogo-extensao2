reset_variables();


if (able_to_move) {
	input();

	calc_movement();

	colisao()

	anim()	
}


if (keyboard_check_pressed(ord("Z"))) {

	if (able_to_interact) {
		var qtd_npcs = 4
		var obj = noone
	
		for (var i = 0; i < qtd_npcs; i++) {
			
			
			if (i == 0) obj = obj_junior
			else if (i == 1) obj = obj_pleno
			else if (i == 2) obj = obj_senior
		
		
			var npc = instance_place(x, y, obj)
			if (npc != -4) show_debug_message(npc)
		
			if (npc != noone and npc.is_active) {
				
				if (npc.start_dialogue == false) {
					
					able_to_interact = false;
					npc.start_dialogue = true;	
				}
				
				break;
			}	

		}
	}
	
	
	// Checa se tem uma instancia de computador por perto
	if (able_to_interact) {

		var player_pc = instance_place(x, y, obj_player_cadeira)
		if (player_pc != noone) {
			show_debug_message("Interagiu com o pc")
			sprite_index = spr_playerAlt_idle_right
			x = 390
			y = 507
			able_to_interact = false 
			able_to_move = false
			global.in_screen = true
			room_goto(Computer)
			
			/*
			able_to_interact = false;

			obj_camera_controller.following = false;
			obj_camera_controller.target_x = 584 + 135; // mover para outro ponto, se quiser
			obj_camera_controller.target_y = 0;
		
			obj_computer_screen.in_screen = true;
			able_to_move = false;
			*/
		
		}
	}
}

if (global.leaving_computer) {
	if (idx == 12) {
		// 540 p/baixo ou 482 p/cima
		//y = 482
		able_to_interact = false 
		able_to_move = false
		x = 390
		y = 507
		idx = 0
	}
	if (idx < 10){
		up += 1
		calc_movement()
		anim()
		idx += 1
	} else if (idx == 10) {
		able_to_interact = true 
		able_to_move = true
		global.leaving_computer = false
		idx = 12
	}
}
