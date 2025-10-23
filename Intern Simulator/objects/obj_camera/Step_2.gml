camera_set_view_size(view_camera[0], global.view_altura, global.view_largura)


if(instance_exists(view_target)){
	var _x1 = view_target.x - global.view_altura / 2;
	var _y1 = view_target.y - global.view_largura / 2;
	
	
	_x1 = clamp(_x1, 0, altura - global.view_altura);
	_y1 = clamp(_y1, 0, largura - global.view_largura);
	
	camera_set_view_pos(view_camera[0], _x1, _y1);
}