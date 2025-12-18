if (room == Menu and song != song_menu) {
	change_song = true
	song = song_menu
} else if ((room == Office_3 or room == Computer)and song != song_office) {
	change_song = true
	song = song_office
} else if (array_contains([batatinha_frita, batatinha_frita_2, mg_tutorial], room) and song != song_minigame) {
	change_song = true
	song = song_minigame
} 

if (change_song == true) {
	if (music_id != noone) {
		if (audio_is_playing(music_id)) {
			audio_stop_sound(music_id);
		}
	}

	music_id = audio_play_sound(song, 10, true);
	change_song = false
}
