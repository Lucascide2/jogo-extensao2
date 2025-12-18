reset_variables();

/* Alterar
if (global.pause) {
	image_speed = 0
	exit
} else {
	image_speed = 1
}
*/


if (able_to_move) {
	input();

	calc_movement();

	colisao()
}

anim()	


if (keyboard_check_pressed(ord("Z"))) {
	
	if (obj_controller.fase == "day_4") {
		
		var elevador = instance_place(x, y, obj_elevador)
		if elevador != noone {
			keyboard_clear(ord("Z"))
			elevador.being_used = true
			exit
		}
	}

	if (able_to_interact) {
	
		var npc = instance_place(x, y, obj_npc)
		
		if (npc != noone and npc.is_active) {
				
			if (npc.start_dialogue == false) {
					
				able_to_interact = false;
				npc.start_dialogue = true;	
			}
				
		}
		
		keyboard_clear(ord("Z"))

	}
	
	
	// Checa se tem uma instancia de computador por perto
	if (able_to_interact) {

		var player_pc = instance_place(x, y, obj_player_cadeira)
		if (player_pc != noone) {
			sprite_index = spr_playerAlt_idle_right
			x = 390
			y = 507
			able_to_interact = false 
			able_to_move = false
			global.in_screen = true
			room_goto(Computer)
		}
		
		keyboard_clear(ord("Z"))
	}
	
	
}

if !variable_global_exists("leaving_computer") global.leaving_computer = false
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