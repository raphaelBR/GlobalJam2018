if (distance_to_object(obj_player) > closeDistance) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = speedAttack;
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
} else {
	direction = point_direction(obj_player.x, obj_player.y, x, y);
	speed = speedFlee;
}
image_angle = direction