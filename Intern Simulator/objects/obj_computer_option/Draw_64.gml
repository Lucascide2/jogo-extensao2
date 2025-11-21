if (obj_computer_screen.tip_number == tip_number) {
		// X_inicial + margem
		var text_start_x = rel_x + get_relative_x(20)
		var text_start_y = rel_y + get_relative_y(10)
		
	
		draw_set_color(c_white);
		draw_rectangle(rel_x, rel_y, get_relative_x(286), get_relative_y(158), false);
		
		draw_set_color(c_black);
		draw_set_font(fnt_dialogue_15);
        draw_text(text_start_x, text_start_y, generate_dialogue(tip_text_array[idx_tip]));
		//draw_rectangle(rel_x + , rel_y, get_relative_x(286), get_relative_y(158), false);
		
} else if ( obj_computer_screen.tip_number == -1) {
	if (global.in_screen and is_available) {
	    draw_set_font(fnt_dialogue);
	    draw_set_color(c_black);

	    draw_text(relative_x + 8 , relative_y + 35 , option_text);
	    //draw_text(obj_computer_screen.x - 340, obj_computer_screen.y + 380, "sua");

	}
}



