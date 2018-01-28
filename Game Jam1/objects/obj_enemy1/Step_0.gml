if (speed != 0) {
	if (distance_to_object(obj_player) > suicideProximity) {
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		image_angle = direction;
	} else {
		speed = 0
		image_speed = 1
		alarm_set(0, explosion_delay * room_speed)
	}
}