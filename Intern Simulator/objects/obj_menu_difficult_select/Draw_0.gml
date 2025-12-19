draw_self()
if (obj_main_menu.in_main_menu == 0) {
	draw_sprite_ext(
	    spr_computer_selector, // sprite
	    0,                     // subimagem
	    obj_selected.x - 2,    // posição X
	    obj_selected.y - 2,    // posição Y
	    2,                     // escala X (2x)
	    2,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);
}