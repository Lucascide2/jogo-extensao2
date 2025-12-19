if (global.difficult == "easy") {
	var data = load_json_file("dialogues2.json")
} else {
	var data = load_json_file("dialogues.json")
}




if (room == Office_3 or room == Boss) {
	if room == Boss first_room_start = true
	
	// FASES 1, 2, 3
	if (variable_global_exists("level")) fase = global.level
	else fase = "day_1"

	phase_data = data[$ fase]
	
	// 3 objetos de npc
	for (var j=0; j < variable_struct_names_count(phase_data); j++) {
		
		var str_obj = variable_struct_get_names(phase_data)[j]
		if str_obj == "tips" continue
		
		
		obj = asset_get_index("obj_" + str_obj)
		
		if (!instance_exists(obj)) continue
		
		
		json_obj = phase_data[$ str_obj]
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
		if (obj.is_active) {
			if (fase != "day_4") obj.inst_task = instance_create_layer(obj.x - 8, obj.y - 27, "controllers", obj_task);
			else obj.inst_task = instance_create_layer(obj.x - 8, obj.y - 27, "controllers", obj_task_chefe);
		}
		
	
	}

	
	if (!variable_global_exists("days_data")) {
		on_test = true
	}

	if(first_room_start) tips_data = phase_data.tips

	if (fase == "day_2" or fase == "day_3" or fase == "day_4" and instance_exists(obj_setor_desbloqueado)) {
		obj_setor_desbloqueado.visible = true
		
		if (fase == "day_2") obj_setor_desbloqueado.sprite_index = spr_setor_debloqueado
		else if (fase == "day_3") obj_setor_desbloqueado.sprite_index = spr_setor_inteligencia_desbloqueado
		else if (fase == "day_4") obj_setor_desbloqueado.sprite_index = spr_chefe_desbloqueado
	}

	obj = noone
	first_room_start = false
}





