var data = load_json_file("dialogues.json")

if (room == Office_3) {
	// FASES 1, 2, 3
	if (variable_global_exists("level")) fase = global.level
	else fase = "day_1"

	phase_data = data[$ fase]
	
	// 3 objetos de npc
	for (var j=0; j < 3; j++) {
		if (j == 0) {
			obj = obj_junior
			json_obj = phase_data.junior
		} 
		else if (j == 1) {

			obj = obj_pleno
			json_obj = phase_data.pleno
		} 
		else if (j == 2) {
			obj = obj_senior
			json_obj = phase_data.senior
		}
		
		active_npc_key = object_get_name(obj)
	
		if (first_room_start) {
			active_npcs[? active_npc_key] = json_obj.is_active;
			obj.is_active = json_obj.is_active;
		} else {
			obj.is_active = active_npcs[? active_npc_key]	
		}
		
		obj.num_dialogues = array_length(json_obj.dialogue_text);

		obj.dialogue_text = []

		for (var i=0; i < obj.num_dialogues; i++) {
			array_push(obj.dialogue_text, generate_dialogue(json_obj.dialogue_text[i])) 
		}

		obj.correct_answer = json_obj.correct_answer;

		// Definindo a visibilidade de instancias
		var inst_task = instance_nearest(obj.x, obj.y, obj_task);
		if (obj.is_active) {
		    inst_task.visible = true;
		} else {
			inst_task.visible = false;
		}
		
	
	}

	
	if (!variable_global_exists("days_data")) {
		on_test = true
	}

	if(first_room_start) tips_data = phase_data.tips

	obj = noone
	first_room_start = false
}



