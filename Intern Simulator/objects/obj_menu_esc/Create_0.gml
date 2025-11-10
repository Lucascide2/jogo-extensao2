is_active = false

option = 1
num_options = 2

obj_selected = obj_option_menu_esc_resume

// Escala de conversão câmera -> Viewport
scale_x = 1280/300
scale_y = 720/170

// Centro do viewport
x_center = display_get_gui_width() / 2;
y_center = display_get_gui_height() / 2;

function get_object_by_option(button_option) {
    switch (button_option) {
        case 1: return obj_option_menu_esc_resume;
        case 2: return obj_option_menu_esc_leave;
        default: return noone; // caso o id não exista
    }
}