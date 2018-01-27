x = obj_player.x
y = obj_player.y

direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

if (active == true) {
	visible = true;
} else {
	visible = false;
}