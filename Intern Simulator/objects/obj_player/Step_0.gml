

if (!moving and able_to_move) {
	
    // Detecta direção e define destino
    if (keyboard_check(vk_up)) {
        target_y -= grid_size;
        moving = true;
		
		dir = 1
    }
    else if (keyboard_check(vk_down)) {
        target_y += grid_size;
        moving = true;
		
		dir = 3
    }
    else if (keyboard_check(vk_left)) {
        target_x -= grid_size;
        moving = true;
		
		dir = 0
		
		sprite_index = spr_player_walk_left
    }
    else if (keyboard_check(vk_right)) {
        target_x += grid_size;
        moving = true;
		
		dir = 2
		
		sprite_index = spr_player_walk_right
    }
	
	var check_place_meeting_furniture = place_meeting(target_x, target_y, obj_table)
	var check_place_meeting_npc = place_meeting(target_x, target_y, obj_junior) or place_meeting(target_x, target_y, obj_pleno) or place_meeting(target_x, target_y, obj_senior)
	var check_place_meeting =  check_place_meeting_furniture
	
	if (check_place_meeting){
		target_x = x;
		target_y = y;
	}
	
	var check_off_limits = false
	
	if (target_x < sprite_width / 2) target_x = sprite_width / 2 ;
	else if (target_y < sprite_height / 2) target_y = sprite_height / 2;
	else if (target_x > room_width - sprite_width / 2) target_x = room_width - sprite_width / 2;
	else if (target_y > room_height - sprite_height / 2) target_y = room_height - sprite_height / 2;
	
	
	
}



// Move até o destino
if (moving) {
    var dx = target_x - x;
    var dy = target_y - y;

    if (abs(dx) > abs(move_speed)) {

        x += sign(dx) * move_speed;
    } else {
        x = target_x;
    }

    if (abs(dy) > move_speed) {
        y += sign(dy) * move_speed;
    } else {
        y = target_y;
    }

    // Chegou no destino
    if (x == target_x && y == target_y) {
        moving = false;
		
		
		if (dir == 2 && !keyboard_check(vk_right)) sprite_index=spr_player_idle_right;
		if (dir == 0) && !keyboard_check(vk_left)  sprite_index=spr_player_idle_left;
		
    }
}



// Lógica diálogo NPC

// Verifica se há um NPC perto
if (keyboard_check_pressed(ord("Z"))) {

	if (able_to_interact) {
		var qtd_npcs = 4
		var obj = noone
	
		for (var i = 0; i < qtd_npcs; i++) {
			
			
			if (i == 0) obj = obj_junior
			else if (i == 1) obj = obj_pleno
			else if (i == 2) obj = obj_senior
		
		
			var npc = instance_place(x, y, obj)
		
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
		
		var player_pc = instance_place(x+7, y, obj_player_computer)
		if (player_pc != noone) {
			able_to_interact = false;

			obj_camera_controller.following = false;
			obj_camera_controller.target_x = 584 + 135; // mover para outro ponto, se quiser
			obj_camera_controller.target_y = 0;
		
			obj_computer_screen.in_screen = true;
			able_to_move = false;
		
		}
	}
	
	
	


}








