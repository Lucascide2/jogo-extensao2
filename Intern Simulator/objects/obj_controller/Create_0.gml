var data = load_json_file("dialogues.json")

on_test = false


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
	
	
	
	obj.is_active = json_obj.is_active;
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


obj = noone


// Carregando configurações das dicas
if (variable_global_exists("tips_data")) {
	for (var i = 0; i < 8; i++) {
		obj = asset_get_index("obj_computer_option_" + string(i + 1))
	
		if (global.tips_data[i] == 1) {
			obj.is_unlockable = true
		} else if (global.tips_data[i] == 2) {
			obj.is_available = true
		}

	}
}

if (!variable_global_exists("days_data")) {
	on_test = true
}

	