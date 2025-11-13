in_main_menu = true
has_pressed_key = false

button_option = 1  // 1 - play   2 - Exit
current_button = obj_button_play_main_menu
num_buttons = 2

function get_object_by_option(button_option) {
    switch (button_option) {
        case 1: return obj_button_play_main_menu;
        case 2: return obj_button_exit_main_menu;
        default: return noone; // caso o id não exista
    }
}


objs_destroy = [obj_menu_esc, obj_controller]
for (var i = 0; i < array_length(objs_destroy); i++) {
	if (instance_exists(objs_destroy[i])) {
	    with (objs_destroy[i]) instance_destroy();
	}
} 



if (!variable_global_exists("go_to_menu_level_select")) global.go_to_menu_level_select = false