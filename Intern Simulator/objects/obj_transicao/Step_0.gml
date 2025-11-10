if (mudei){
	alpha -= .03;
}
else{
	alpha += .03;
}

if(alpha>=1){
	room_goto(destino);
	
	obj_player1.x = destino_x;
	obj_player1.y = destino_y;
	
}