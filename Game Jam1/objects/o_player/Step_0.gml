// Mouse Control
direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;

// Death
if(hp <= 0)
{
	instance_destroy();
}