var data = load_json_file("progress.json")

days_data = data[$ "days"]

obj = noone

// Carregando configurações dos dias
for (var i = 0; i < 8; i++) {
	obj = asset_get_index("obj_button_level_menu_level_select_" + string(i + 1))
	obj.is_available = days_data[i]

}

// Carregando configurações dos dias
global.days_data = days_data

show_debug_message(data)