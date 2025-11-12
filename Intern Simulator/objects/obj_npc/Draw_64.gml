// Caixa do diálogo
//draw_rectangle(0, display_get_height() - 100, display_get_width(), display_get_height(), false);
if (start_dialogue) {
	var x_ = 200;
	var y_ = 520;
	var espaco = font_get_size(fnt_dialogue_26) + 8;

    draw_set_color(make_color_rgb(30, 30, 30));
    draw_rectangle(150, 500, 1150, 700, false);
    // Texto
    draw_set_font(fnt_dialogue_26);
    draw_set_color(c_white);
	
    if (dialogue_text[current_dialogue_index] == "<INPUT>") {
        //draw_text(200, 520, generate_dialogue("Digite sua resposta: " + input_text));
		
		var texto = generate_dialogue("Digite sua resposta: " + input_text);
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
