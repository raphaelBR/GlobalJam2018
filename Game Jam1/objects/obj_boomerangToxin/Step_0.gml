if (reverse = false) {
	speed = clamp(speed - slower / room_speed, 0, speedMax)
	if (speed == 0) {
		reverse = true
		instance_create_layer(x, y, "Tiles", obj_groundToxin)
	}
} else {
	speed = clamp(speed + faster / room_speed, 0, speedMax)
	direction = point_direction(x, y, obj_player.x, obj_player.y)
}
image_angle = direction