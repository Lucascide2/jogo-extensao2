if (instance_exists(obj_playerAlt) and !obj_playerAlt.able_to_interact) exit

if (keyboard_check_pressed(vk_escape) and !global.pause) { // Acessa o menu esc
	if (surface_exists(application_surface)) {
	    var surf_w = surface_get_width(application_surface);
	    var surf_h = surface_get_height(application_surface);

	    if (sprite_exists(global.scrn)) sprite_delete(global.scrn);
	    global.scrn = sprite_create_from_surface(application_surface, 0, 0, surf_w, surf_h, false, true, 0, 0);
	}
	 
	
	instance_deactivate_all(true)

	global.pause = !global.pause
	
}	



if (global.pause) {
	if (keyboard_check_pressed(vk_down)) {
		if (option + 1 <= num_options) {
			option += 1
			obj_selected = get_object_by_option(option)
		}
	} else if (keyboard_check_pressed(vk_up)){
		if (option - 1 > 0) {
			option -= 1
			obj_selected = get_object_by_option(option)
		}
	}
}

if (global.pause) {
	if (obj_menu_esc.obj_selected == "Resume") {
		if (keyboard_check_pressed(ord("Z"))) {

			global.pause = false
			
			instance_activate_all()

			keyboard_clear(ord("Z"));
			
		}
	} else if (obj_menu_esc.obj_selected == "Leave") {
		if (keyboard_check_pressed(ord("Z"))) {

			global.pause = false
			room_goto(Menu)
			
			
			keyboard_clear(ord("Z"));
			
			if (instance_exists(obj_player1)) obj_player1.persistent = false 
		}	
	}
} 
