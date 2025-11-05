var _chao = place_meeting(x, y+1, obj_chao)
var _left, _right, _jump;

_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check(inputs.jump);

velh = (_right - _left)*vel;

if(_chao){
	if(_jump){
		velv = -vel_jump;	
	}
	
	if(velh != 0){
		image_xscale = 1.5*sign(velh)
	}
}
else{
	velv += grav;
	
	if(velh != 0){
		image_xscale = 1.5*sign(velh)
	}
}

var _armadilha = instance_place(x, y, obj_trap)

if(_armadilha){
	dano = true;
	game_restart();
}
