altura = 1280;
largura = 720;
escala = 3;
view_target = obj_playerAlt

global.view_altura = altura / escala;
global.view_largura = largura / escala;

window_set_size(global.view_altura*escala, global.view_largura*escala)

surface_resize(application_surface, global.view_altura*escala, global.view_largura*escala)