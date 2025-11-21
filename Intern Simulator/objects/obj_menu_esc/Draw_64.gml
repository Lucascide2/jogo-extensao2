 if (global.pause) {

    draw_sprite(global.scrn, 0, 0, 0);
   
	 
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

	// Desenhando botões de Resume e Leave
	draw_sprite_ext(
	    spr_option_menu_esc, // sprite
	    0,                     // subimagem
	    x_center,    // posição X
	    y_option_struct[? "Resume"],    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y * 1.2,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);
	
	draw_sprite_ext(
	    spr_option_menu_esc, // sprite
	    0,                     // subimagem
	    x_center,    // posição X
	    y_option_struct[? "Leave"],    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y * 1.2,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);

    draw_set_font(fnt_dialogue_25);
    draw_set_color(c_white);
	
    draw_text(x_center - 95 , y_option_struct[? "Resume"] - 15 , "Resume");
	draw_text(x_center - 80 , y_option_struct[? "Leave"] - 15 , "Leave");
	
	
	// Selecionador dos botões
	
	draw_sprite_ext(
	    spr_computer_selector, // sprite
	    0,                     // subimagem
	    x_center - 31*scale_x,    // posição X
	    y_option_struct[? obj_selected]- 13.2*scale_y,    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y * 1.2,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);


}