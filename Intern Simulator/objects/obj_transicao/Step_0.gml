 if (mudei){
	alpha -= .03;
}
else{
	alpha += .03;
}
if room == Office_3 or room==Boss{
	if(alpha>=1){
		
		room_goto(destino);
		obj_playerAlt.x = destino_x;
		obj_playerAlt.y = destino_y;
		
	}

}
else{
	if(alpha>=1){
		room_goto(destino);
	      
		obj_player1.x = destino_x;
		obj_player1.y = destino_y;
	
	}
}
