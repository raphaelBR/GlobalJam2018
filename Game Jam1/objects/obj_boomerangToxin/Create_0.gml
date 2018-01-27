speedMax = 8
slower = 3
faster = 3
reverse = false

speed = speedMax
direction = point_direction(x, y, mouse_x, mouse_y);
inst = instance_create_layer(x, y, "Explosions", obj_trailToxin)