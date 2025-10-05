// Configurações iniciais da câmera
largura = 300;
altura = 180;

borda_horizontal = 150;
borda_vertical = 90;

following = true; // se a câmera deve seguir o jogador

// cria ou obtém a câmera
cam = view_camera[0];
camera_set_view_size(cam, largura, altura);
camera_set_view_pos(cam, 0, 0);
view_enabled = true;
view_visible[0] = true;

// garante que a room não mostre além dos limites
target_x = 0;
target_y = 0;