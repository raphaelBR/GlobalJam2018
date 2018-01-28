if (place_meeting(x + tilingX, y, obj_groundFire) == false) && (place_meeting(x + tilingX, y, obj_wall) == false) {
	instance_create_layer(x + tilingX, y, "Tiles", obj_groundFire)
}
if (place_meeting(x - tilingX, y, obj_groundFire) == false) && (place_meeting(x + tilingX, y, obj_wall) == false) {
	instance_create_layer(x - tilingX, y, "Tiles", obj_groundFire)
}
if (place_meeting(x, y + tilingY, obj_groundFire) == false) && (place_meeting(x + tilingX, y, obj_wall) == false) {
	instance_create_layer(x, y + tilingY, "Tiles", obj_groundFire)
}
if (place_meeting(x, y - tilingY, obj_groundFire) == false) && (place_meeting(x + tilingX, y, obj_wall) == false) {
	instance_create_layer(x, y - tilingY, "Tiles", obj_groundFire)
}
alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)