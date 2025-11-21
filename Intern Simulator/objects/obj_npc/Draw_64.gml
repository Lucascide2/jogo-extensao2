// Caixa do diálogo
//draw_rectangle(0, display_get_height() - 100, display_get_width(), display_get_height(), false);
if (start_dialogue) {
	var x_ = 200;
	var y_;
	var espaco = font_get_size(fnt_dialogue_15) + 8;
	
	var has_code = string_pos("<CODE>", dialogue_text[current_dialogue_index]) > 0
	var previous_is_input = current_dialogue_index > 0 and dialogue_text[current_dialogue_index - 1] == "<INPUT>"
	var previous_is_code = current_dialogue_index > 0 and  (string_pos("<CODE>", dialogue_text[current_dialogue_index - 1]) > 0)
	
	
	if  (has_code or previous_is_code) {
			draw_set_color(c_black);
			draw_set_alpha(0.6); // quanto maior, mais escuro (0 = invisível, 1 = opaco)
			draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
			draw_set_alpha(1)
	}
	
	if ((has_code and previous_is_input) or previous_is_code) {
		draw_set_color(c_white);
		draw_rectangle(150, 150, 1150, 350, false);
			
		draw_set_color(c_black);
		y_ = 170
			
		var texto = string_replace_all(dialogue_text[current_dialogue_index - 1], "<CODE>", "") ;
		var linhas = string_split(texto, "\n");

		for (var i = 0; i < array_length(linhas); i++) {
			draw_text(x_, y_ + i * espaco, linhas[i]);
		}	
	}

	y_ = 520

    draw_set_color(make_color_rgb(30, 30, 30));
    draw_rectangle(150, 500, 1150, 700, false);
    // Texto
    draw_set_font(fnt_dialogue_15);
    draw_set_color(c_white);
	

		
     if (dialogue_text[current_dialogue_index] == "<INPUT>") {
        //draw_text(200, 520, generate_dialogue("Digite sua resposta: " + input_text));
	
		var texto = generate_dialogue("Complete a lacuna "+ string(idx_answer + 1)+ ": " + input_text);
		var linhas = string_split(texto, "\n");
		

		for (var i = 0; i < array_length(linhas); i++) {
		    draw_text(x_, y_ + i * espaco, linhas[i]);
		}
		
    } else {
        //draw_text(200, 520, display_text);

		var texto = display_text;
		var linhas = string_split(texto, "\n");

		for (var i = 0; i < array_length(linhas); i++) {
		    draw_text(x_, y_ + i * espaco, linhas[i]);
		}
    }
    //draw_text(990, 670, "Press Z");	
}
