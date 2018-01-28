if (distance_to_object(obj_player) > closeDistance) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = speedAttack;
	image_speed = 1
} else if (distance_to_object(obj_player) > securityDistance) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = 0;
	if (can_shoot == true) {
		inst = instance_create_layer(x, y, "Bullets", obj_bulletEnemy)
		inst.direction = direction
		inst.image_angle = direction
		can_shoot = false
		alarm_set(0, cooldown * room_speed)
	}
	image_speed = 0
	image_index = 0
} else {
	direction = point_direction(obj_player.x, obj_player.y, x, y);
	speed = speedFlee;
	image_speed = 1
}
if (direction > 270 || direction < 90) {
	image_xscale = 1
} else {
	image_xscale = -1
}