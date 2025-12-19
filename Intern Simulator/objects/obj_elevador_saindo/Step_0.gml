event_inherited();

is_active = true

if (being_used) {
	being_used = false
	if (room == Office_3){
		var tran = instance_create_layer(0, 0, layer, obj_transicao)
		tran.destino = Boss;
		tran.destino_x = 53;
		tran.destino_y = 30;
	}
	if (room == Boss){
		var tran = instance_create_layer(0, 0, layer, obj_transicao)
		tran.destino = Office_3;
		tran.destino_x = 593;
		tran.destino_y = 30;
	}

}


