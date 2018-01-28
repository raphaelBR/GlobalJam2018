direction = point_direction(x, y, obj_player.x, obj_player.y);
if (direction > 270 || direction < 90) {
	image_xscale = 1
} else {
	image_xscale = -1
}