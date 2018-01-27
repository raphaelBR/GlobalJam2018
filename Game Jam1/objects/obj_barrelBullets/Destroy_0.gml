var inst
for (var i = 0; i < fragments; ++i) {
	inst = instance_create_layer (x, y, "Bullets", obj_bulletEnemy);
	inst.direction = i * (360 / fragments)
	inst.image_angle = inst.direction
}