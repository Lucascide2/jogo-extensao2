  //checar se está colidindo com o player do minigame
 var player1 = place_meeting(x, y, obj_player1)
 
 //var z = keyboard_check(ord("Z"));
 
 //se o player do minigame está colidindo comigo
 if (player1){
	
	if(ultima_sala){
		if global.level == "day_2" complete_mini_game(1)
		else complete_mini_game(0)
	}
	if(ultima_sala != true ){
	var tran = instance_create_layer(0, 0, layer, obj_transicao)
		
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
	}
	

 }