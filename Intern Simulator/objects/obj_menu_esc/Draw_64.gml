 if (is_active) {
	// Desenha o escurecimento da tela inteira
	draw_set_color(c_black);
	draw_set_alpha(0.6); // quanto maior, mais escuro (0 = invisível, 1 = opaco)
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

	// Resetar cor e alpha (boa prática)
	draw_set_color(c_white);
	draw_set_alpha(1);


	draw_sprite_ext(
	    spr_menu_esc, // sprite
	    0,                     // subimagem
	    x_center,    // posição X
	    y_center,    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);
	
	draw_sprite_ext(
	    spr_computer_selector, // sprite
	    0,                     // subimagem
	    x_center - 31*scale_x,    // posição X
	    obj_selected.y_option- 12*scale_y,    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y+0.35,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);


}