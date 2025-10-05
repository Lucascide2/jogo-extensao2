// Caixa do diálogo

//draw_rectangle(0, display_get_height() - 100, display_get_width(), display_get_height(), false);
if (start_dialogue) 
{
	draw_set_color(make_color_rgb(30, 30, 30));
	draw_rectangle(150, 530, 1150, 730, false);
	// Texto
	draw_set_font(fnt_dialogue);
	draw_set_color(c_white);
	
	
	if (dialogue_text[current_dialogue_index] == "<INPUT>") {
		draw_text(200, 550, generate_dialogue("Digite sua resposta: " + input_text));
	} else {
		draw_text(200, 550, display_text);
	}
	
	
	
	// draw_text(1040, 700, "Press Z");
}


