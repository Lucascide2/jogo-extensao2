global.pause = false

option = 1
num_options = 2

obj_selected = "Resume"

// Escala de conversão câmera -> Viewport
scale_x = 1280/300
scale_y = 720/170

// Centro do viewport
x_center = display_get_gui_width() / 2;
y_center = display_get_gui_height() / 2;

function get_object_by_option(button_option) {
    switch (button_option) {
        case 1: return "Resume";
        case 2: return "Leave";
        default: return noone; // caso o id não exista
    }
}

y_option_struct = ds_map_create()
y_option_struct[? "Resume"] = y_center - 20 * scale_y
y_option_struct[?"Leave"] = y_center + 10 * scale_y


global.scrn = noone