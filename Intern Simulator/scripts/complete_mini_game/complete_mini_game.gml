function complete_mini_game(id_minigame){
	obj_controller.tips_data[id_minigame] += 1
	
	if instance_exists(obj_player1) obj_player1.persistent = false
	
	global.in_screen = true
	room_goto(Computer)
}