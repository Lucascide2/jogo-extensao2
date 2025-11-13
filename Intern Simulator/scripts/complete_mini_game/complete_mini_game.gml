function complete_mini_game(id_minigame){
	obj_controller.tips_data[id_minigame] += 1
	obj_player1.persistent = false
	room_goto(Office_3)
}