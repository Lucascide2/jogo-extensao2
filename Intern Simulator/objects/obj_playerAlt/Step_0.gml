reset_variables();

input();

calc_movement();

colisao()

anim()

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
}