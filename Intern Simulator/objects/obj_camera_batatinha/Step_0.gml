// Referência ao jogador
var player = obj_playerAlt; // substitua se o nome for diferente



if (in_cutscene) {
	player.able_to_move = false
	
	timer_ms += delta_time
	
	if (timer_ms > 3000000) {
		target_x = lerp(target_x, player.x - borda_horizontal, 0.20)
		
		if (target_x <= player.x - borda_horizontal + 4) {
			in_cutscene = false
			player.able_to_move = true
			
			following = true
			obj_doll_batatinha_frita.start = true
			obj_message_batatinha.visible = false
		} 
	}
	
}

show_debug_message(target_x)

if (following && instance_exists(player)) {
    // Define a posição alvo da câmera (centro do jogador)
    target_x = player.x - borda_horizontal;
} 


// 📸 Atualiza a posição da câmera
camera_set_view_pos(cam, target_x, pos_y);