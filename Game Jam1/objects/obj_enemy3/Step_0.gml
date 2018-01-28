if (distance_to_object(obj_bulletEnemy) < protectionDistance || distance_to_object(obj_grenadeFire) < protectionDistance) {
	near = noone
	if (instance_exists(obj_bulletEnemy) == true) {
		if (near = noone) {
			near = instance_nearest(x, y, obj_bulletEnemy)
		} else if (distance_to_object(near) > distance_to_object(instance_nearest(x, y, obj_bulletEnemy))){
			near = instance_nearest(x, y, obj_bulletEnemy)
		}
	}
	if (instance_exists(obj_grenadeFire) == true) {
		if (near = noone) {
			near = instance_nearest(x, y, obj_grenadeFire)
		} else if (distance_to_object(near) > distance_to_object(instance_nearest(x, y, obj_grenadeFire))){
			near = instance_nearest(x, y, obj_grenadeFire)
		}
	}
	if (instance_exists(obj_billard) == true) {
		if (near = noone) {
			near = instance_nearest(x, y, obj_billard)
		} else if (distance_to_object(near) > distance_to_object(instance_nearest(x, y, obj_billard))){
			near = instance_nearest(x, y, obj_billard)
		}
	}
	
	direction = point_direction(x, y, near.x, near.y);
	speed = 0
	inst.active = true
} else {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	speed = speedWalk
	inst.active = false
}
if (direction > 270 || direction < 90) {
	image_xscale = 1
} else {
	image_xscale = -1
}
inst.x = x
inst.y = y
inst.image_angle = image_angle