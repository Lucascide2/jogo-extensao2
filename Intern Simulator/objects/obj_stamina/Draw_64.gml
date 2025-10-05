var stamina = 100;
var stamina_max = 100;

var percent = stamina / stamina_max;
draw_sprite_part_ext(
    spr_stamina,  // sprite
    0,            // frame
    0, 0,         // corte no sprite (sx, sy)
    64 * percent, 64,  // parte visível
    1000, -40,     // posição na tela
    4, 4,         // xscale, yscale (aumenta 4x o tamanho original)
    c_white, 1    // cor e opacidade
);