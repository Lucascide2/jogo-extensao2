on_test = false
phase_data = noone

obj = noone
json_obj = noone

fase = noone

global.in_screen = false
global.leaving_computer = false

first_room_start = true
active_npc_key = noone

active_npcs = ds_map_create()
active_npcs[? "obj_junior"] = false
active_npcs[?"obj_pleno"] = false
active_npcs[? "obj_senior"] = false


// Dicas
tips_data = noone

timer = 60 * 10;   // 60 FPS * 10 minutes * 60 seconds

// Progresso salvo do jogo fica aqui
//show_debug_message(game_save_id)
