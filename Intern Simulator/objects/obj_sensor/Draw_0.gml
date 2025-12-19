// configura fonte e alinhamento
draw_set_font(fnt_minigame);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// calcula o fator de escala com seno
var scale = 1 + sin(current_time / 200) * 0.1; // 10% de variação

// salva matriz atual
var m = matrix_get(matrix_world);
var is_touching = place_meeting(x, y, obj_player1);

if (is_touching) {
    draw_set_color(c_yellow); // muda a cor
    scale = 1.2 + sin(current_time / 200) * 0.15;
} else {
    draw_set_color(c_white);
    scale = 1 + sin(current_time / 200) * 0.1;
}

// aplica a escala
var mx = x;
var my = y - sprite_height/2;
var mat = matrix_build(mx, my, 0, 0, 0, 0, scale, scale, 1);
matrix_set(matrix_world, mat);

// desenha o texto
draw_text(0, 0, var_text);

// restaura matriz
matrix_set(matrix_world, m);

// restaura alinhamentos
draw_set_halign(fa_left);
draw_set_valign(fa_top);
