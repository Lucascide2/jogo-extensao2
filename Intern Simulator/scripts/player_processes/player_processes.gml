function reset_variables(){
	up=		0;
	left=	0;
	right=	0;
	down=	0;
	velh =	0;
	velv=	0;
}

function input(){
	if(keyboard_check(ord("W"))) up = 1
	if(keyboard_check(ord("A"))) left = 1
	if(keyboard_check(ord("S"))) down = 1
	if(keyboard_check(ord("D"))) right = 1
}

function calc_movement(){
	velh = (right - left);
	velv = (down - up);
	
	if velh != 0 olhando = velh
	//if velv != 0 olhando = velv
	
	if velh != 0 or velv!= 0{
		
		//pegar direção que está se movendo
		var _dir = point_direction(0, 0, velh, velv);
		//distância que está se movendo
		velh = lengthdir_x(vel, _dir);
		velv = lengthdir_y(vel, _dir);
		
		//adicionando movimento ao jogador
		x += velh;
		y += velv;
		
		global.is_moving = true
	} else {
		global.is_moving = false
	}
	
	
	
}

function colisao(){
	//setando os valores alvo
	var _tx = x;
	var _ty = y;
	
	// mover de volta para a última posição, fora da colisão
	x = xprevious; 
	y = yprevious;

	//distância que queremos nos mover
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	// mover para longe quando x ou y forem colidir
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, obj_colisores) x += sign(_tx - x);
	}
	repeat(_disy){
		if !place_meeting(x, y + sign(_ty - y), obj_colisores) y += sign(_ty - y);
	}
}

function anim(){
	if velh != 0 or velv != 0 {

		if velh < 0 {
			sprite_index = spr_playerAlt_run_left;
			olhando = "left";
		}
		if velh > 0 {
			sprite_index = spr_playerAlt_run_right;
			olhando = "right";
		}
		if velv < 0 {
			sprite_index = spr_playerAlt_run_top;
			olhando = "up";
		}
		if velv > 0 {
			sprite_index = spr_playerAlt_run_down;
			olhando = "down";
		}
	}
	else{
		switch(olhando){
			case "left":
				sprite_index = spr_playerAlt_idle_left;
				break;
			case "right":
				sprite_index = spr_playerAlt_idle_right;
				break;
			case "up":
				sprite_index = spr_playerAlt_idle_top;
				break;
			case "down":
				sprite_index = spr_playerAlt_idle_down;
				break;
		
		
		}
	}
}
