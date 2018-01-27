if (place_meeting(x + tilingX, y, obj_groundToxin) == false) {
	instance_create_layer(x + tilingX, y, "Tiles", obj_groundToxin)
}
if (place_meeting(x - tilingX, y, obj_groundToxin) == false) {
	instance_create_layer(x - tilingX, y, "Tiles", obj_groundToxin)
}
if (place_meeting(x, y + tilingY, obj_groundToxin) == false) {
	instance_create_layer(x, y + tilingY, "Tiles", obj_groundToxin)
}
if (place_meeting(x, y - tilingY, obj_groundToxin) == false) {
	instance_create_layer(x, y - tilingY, "Tiles", obj_groundToxin)
}
alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)