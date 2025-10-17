//colisão horizontal
var _col = instance_place(x+velh, y, obj_chao)
//se colidir, gruda no que colidiu
if(_col){
	//checa se vai para a direita
	if(velh>0){
		//grudando na parte esquerda 
		x = _col.bbox_left + (x-bbox_right);
	}
	//checa se vai para a esquerda
	if(velh<0){
		//grudando na direita
		x = _col.bbox_right + (x-bbox_left);
	}
	velh = 0;
 }
x += velh;
 
//colisão vertical
 
var _col = instance_place(x, y +velv, obj_chao);
	if(_col){
		if(velv>0){
			// indo para baixo
			y = _col.bbox_top + (y-bbox_bottom);
		}
		if(velv<0){
			// indo para cima
			y = _col.bbox_bottom + (y-bbox_top);
		}
	velv = 0;
}

y += velv;