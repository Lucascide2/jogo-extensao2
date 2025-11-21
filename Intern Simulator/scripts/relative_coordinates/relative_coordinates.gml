function get_relative_x(room_x, cam_width=300, cam_height=170){
	var rel_x = (room_x/cam_width) * 1280;
	return rel_x
}

function get_relative_y(room_y, cam_width=300, cam_height=170){
	var rel_y = (room_y/cam_height) * 720;
	return rel_y
}

function get_relative_coordinates(room_x, room_y, cam_width=300, cam_height=170){
	rel_x = (room_x/cam_width) * 1280;
	rel_y = (room_y / cam_height) * 720;
}