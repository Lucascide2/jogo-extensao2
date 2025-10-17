

var json_text = file_text_open_read("dialogues.json"); 
var content = ""; 
while (!file_text_eof(json_text)) {
	content += file_text_read_string(json_text); 
	file_text_readln(json_text); 
} 
file_text_close(json_text); 

var data = json_parse(content);




// FASES 1, 2, 3
fase = "phase_1";

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

	for (i=0; i < obj.num_dialogues; i++) {
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


obj_computer_option_1.is_available = true
obj_computer_option_2.is_unlockable = true

	