// Referência ao jogador
var player = obj_player; // substitua se o nome for diferente

if (following && instance_exists(player)) {
    // Define a posição alvo da câmera (centro do jogador)
    target_x = player.x - largura / 2;
    target_y = player.y - altura / 2;
}

// Movimento suave
var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);
var new_x = target_x;
var new_y = target_y;

// 🔒 Limita a câmera dentro dos limites da room
if (following) new_x = clamp(new_x, 0, 505 - largura);
else new_x = clamp(new_x, 0, room_width - largura);

if (following) new_y = clamp(new_y, 0, 175 - altura);
new_y = clamp(new_y, 0, room_height - altura);

// 📸 Atualiza a posição da câmera
camera_set_view_pos(cam, new_x, new_y);