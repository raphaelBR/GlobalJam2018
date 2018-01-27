///@description DROP FIRE

//dépose un feu suite à l'explosion d'un baril
if drop_fire {
	instance_create_layer(x, y, "Instances", obj_groundFire);
	drop_fire = false;
}
