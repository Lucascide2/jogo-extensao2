reset_variables();


if (able_to_move) {
	input();

	calc_movement();

	colisao()
}

anim()	


if (keyboard_check_pressed(ord("Z"))) {

	if (able_to_interact) {
	
		var npc = instance_place(x, y, obj_npc)
		if (npc == noone) show_debug_message(npc)
		
		if (npc != noone and npc.is_active) {
				
			if (npc.start_dialogue == false) {
					
				able_to_interact = false;
				npc.start_dialogue = true;	
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
		}
	}
}

if (keyboard_check_pressed(vk_escape)) { // Acessa o menu esc
	if (able_to_interact) {
		obj_menu_esc.is_active = true
		
		able_to_interact = false
		able_to_move = false
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
