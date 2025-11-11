if (global.pause) {
	image_speed = 0
	exit
} else {
	image_speed = 1
}

 _chao = place_meeting(x, y+1, obj_chao)

if(_chao){
	
	//velh = vel
	
	if(place_meeting(x+velh, y, obj_chao)){
		velh *= -1;
		image_yscale = sign(velh);
	}
	if(pode_cair == false){
		if(place_meeting(x+velh *17, y+1, obj_chao) == false){
			velh *= -1;
		}
	}
	
}
 