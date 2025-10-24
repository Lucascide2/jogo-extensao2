// Configurações iniciais da câmera
pos_y = 184

largura = 350;
altura = 263;

borda_horizontal = largura/2;

following = false; // se a câmera deve seguir o jogador

// cria ou obtém a câmera
cam = view_camera[0];
camera_set_view_size(cam, largura, altura);


view_enabled = true;
view_visible[0] = true;

// X inicial da câmera
target_x = 880 - borda_horizontal;

// Verificador da cutscene
in_cutscene = true

// Contador da cutscene
timer_ms = 0