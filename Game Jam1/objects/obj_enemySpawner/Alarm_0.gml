type = irandom_range(0, 2)
switch (type) {
    case 0:
		instance_create_layer(x, y, "Instances", obj_enemy1);
        break;
    case 1:
		instance_create_layer(x, y, "Instances", obj_enemy2);
        break;
    case 2:
		instance_create_layer(x, y, "Instances", obj_enemy3);
        break;
    default:
        break;
}
alarm_set(0, (spawn_cd + random_range(0, spawn_cd_random)) * room_speed);