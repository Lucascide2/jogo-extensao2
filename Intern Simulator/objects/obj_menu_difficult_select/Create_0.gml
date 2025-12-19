option = 1
obj_selected = obj_button_difficult_easy
has_pressed_key = false
num_buttons = 2
current_button = noone

function get_object_by_option(button_option) {
    switch (button_option) {
        case 1: return obj_button_difficult_easy;
        case 2: return obj_button_difficult_hard;
        default: return noone; // caso o id não exista
    }
}