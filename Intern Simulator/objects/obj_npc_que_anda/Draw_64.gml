// Caixa do diálogo
//draw_rectangle(0, display_get_height() - 100, display_get_width(), display_get_height(), false);
if (start_dialogue) {

    draw_set_color(make_color_rgb(30, 30, 30));
    draw_rectangle(150, 500, 1150, 700, false);
    // Texto
    draw_set_font(fnt_dialogue_19);
    draw_set_color(c_white);
    if (dialogue_text[current_dialogue_index] == "<INPUT>") {
        draw_text(200, 520, generate_dialogue("Digite sua resposta: " + input_text));
    } else {
		var largura_max = 800; // largura máxima em pixels da caixa de texto
		var altura_linha = 45; // altura entre linhas
		draw_text_ext(200, 520, display_text, altura_linha, largura_max);
    }
    // draw_text(1040, 700, "Press Z");
}
