// Carregando configurações das dicas
// Migrada do obj_controller
if (object_exists(obj_controller)) {
	for (var i = 0; i < 8; i++) {
		obj = asset_get_index("obj_computer_option_" + string(i + 1))
	
		if (obj_controller.tips_data[i] == 1) {
			obj.is_unlockable = true
		} else if (obj_controller.tips_data[i] == 2) {
			obj.is_available = true
		}

	}
}