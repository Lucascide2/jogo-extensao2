var scale_x = (1280/350)
var scale_y = (720/263)

draw_sprite_ext(
	sprite_index,
	0,
	310 * scale_x,
	120,
	scale_x,
	scale_y,
	0,                     // rotação
	c_white,               // cor
	1     
)

if (!is_looking){
	draw_set_colour(c_white)
	draw_text(75 * scale_x, 20*scale_y, display_text);
}
