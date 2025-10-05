

var sx_retangle = 570
var sy_retangle = 40

draw_set_color(make_color_rgb(137, 81, 41));
draw_roundrect_ext(sx_retangle-5, sy_retangle-5, sx_retangle+5 + 120, sy_retangle+5 + 40, 10, 10, false)



draw_set_color(make_color_rgb(0, 0, 128));
draw_roundrect_ext(sx_retangle, sy_retangle, sx_retangle + 120, sy_retangle + 40, 10, 10, false)


draw_set_font(fnt_time);
draw_set_color(c_white);


draw_text(sx_retangle + 10, sy_retangle + 10, time_str);