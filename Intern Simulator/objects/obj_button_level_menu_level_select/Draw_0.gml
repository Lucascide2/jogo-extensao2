draw_self();

if (is_available) {
	draw_sprite_ext(
	    spr_task, // sprite
	    0,                     // subimagem
	    x + 68,    // posição X
	    y - 8,    // posição Y
	    2,                     // escala X (2x)
	    2,                     // escala Y (2x)
	    0,                     // rotação
	    c_white,               // cor
	    1                      // opacidade
	);

}