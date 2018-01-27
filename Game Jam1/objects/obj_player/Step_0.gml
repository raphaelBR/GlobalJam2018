direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;


if (mouse_check_button(mb_left)) {
	if(cooldown <= 0) {
		instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_bullet);
		cooldown = 5;
	}
}

cooldown += -1;