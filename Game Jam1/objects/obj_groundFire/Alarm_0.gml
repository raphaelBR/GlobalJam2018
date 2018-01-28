if ((place_meeting(x + global.tilingX, y, obj_groundFire) == false) || (place_meeting(x - global.tilingX, y, obj_groundFire) == false) || (place_meeting(x, y + global.tilingY, obj_groundFire) == false) || (place_meeting(x, y - global.tilingY, obj_groundFire) == false)) {
	inst = noone
	do {
		r = irandom_range(0, 3)
		switch (r) {
		    case 0:
		        if (place_meeting(x + global.tilingX, y, obj_groundFire) == false) && (place_meeting(x + global.tilingX, y, obj_wall) == false) {
					inst = instance_create_layer(x + global.tilingX, y, "Tiles", obj_groundFire)
				}
		        break;
		    case 1:
				if (place_meeting(x - global.tilingX, y, obj_groundFire) == false) && (place_meeting(x + global.tilingX, y, obj_wall) == false) {
					inst = instance_create_layer(x - global.tilingX, y, "Tiles", obj_groundFire)
				}
				break;
		    case 2:
				if (place_meeting(x, y + global.tilingY, obj_groundFire) == false) && (place_meeting(x + global.tilingX, y, obj_wall) == false) {
					inst = instance_create_layer(x, y + global.tilingY, "Tiles", obj_groundFire)
				}
				break;
		    case 3:
				if (place_meeting(x, y - global.tilingY, obj_groundFire) == false) && (place_meeting(x + global.tilingX, y, obj_wall) == false) {
					inst = instance_create_layer(x, y - global.tilingY, "Tiles", obj_groundFire)
				}
				break;
		    default:
		        break;
		}
	} until (inst != noone);

	alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)
}