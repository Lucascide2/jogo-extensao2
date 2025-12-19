on_test = false
phase_data = noone

obj = noone
json_obj = noone

fase = noone

global.chefe_respondido = false
global.in_screen = false
global.leaving_computer = false

first_room_start = true
active_npc_key = noone

active_npcs_names = ["junior", "pleno", "senior", "npc4", "npc5", "npc6", "npc9", "npc10", "npc11", "npc12", "npc13", "npc14", "boss"]

active_npcs = ds_map_create()

for (var i = 0; i < array_length(active_npcs_names); i++) {
	active_npcs[? "obj_" + active_npcs_names[i]] = false
}

// Dicas
tips_data = noone

timer = 60 * 10;   // 60 FPS * 10 minutes * 60 seconds

// Progresso salvo do jogo fica aqui
//show_debug_message(game_save_id)
