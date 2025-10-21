if (obj_menu_esc.is_active) {
	
	draw_sprite_ext(
	    spr_option_menu_esc, // sprite
	    0,                     // subimagem
	    x_center,    // posição X
	    y_option,    // posição Y
	    scale_x,                     // escala X (2x)
	    scale_y,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);

    draw_set_font(fnt_dialogue);
    draw_set_color(c_black);
	
    draw_text(x_center - 65 , y_option - 10 , option_text);

    //draw_text(relative_x + 8 , relative_y + 35 , option_text);
    //draw_text(obj_computer_screen.x - 340, obj_computer_screen.y + 380, "sua");

}