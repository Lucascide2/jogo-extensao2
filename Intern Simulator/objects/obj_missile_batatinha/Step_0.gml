if (global.pause) {
	image_speed = 0
	exit
} else {
	image_speed = 1
}

if (place_meeting(x, y, obj_playerAlt)) obj_playerAlt.x = 220