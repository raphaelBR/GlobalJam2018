///@description PLAYER CHECKS

//variables
mouse_left = mouse_check_button(mb_left);
//pour le mouvement
move_up = keyboard_check(ord("W"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));
move_right = keyboard_check(ord("D"));
tol = 1;

///// MOUVEMENT /////////////////////////////////////

if (move_up == true) {
	for (var i = 0; i < spd; ++i) {
	    if ((bbox_top > 0) && (collision_line(bbox_left + tol, bbox_top - tol, bbox_right - tol, bbox_top - tol, obj_wall, 0, true) == noone)) {
			y--;
		} else {
			break;
		}	
	}
}
if (move_down == true) {
	for (var i = 0; i < spd; ++i) {
	    if ((bbox_bottom < room_height) && (collision_line(bbox_left + tol, bbox_bottom + tol, bbox_right - tol, bbox_bottom + tol, obj_wall, 0, true) == noone)) {
			y++;
		} else {
			break;
		}	
	}
}

if (move_left == true) {
	for (var i = 0; i < spd; ++i) {
	    if ((bbox_left > 0) && (collision_line(bbox_left - tol, bbox_top + tol, bbox_left - tol, bbox_bottom - tol, obj_wall, 0, true) == noone)) {
			x--;
		} else {
			break;
		}	
	}
}
if (move_right == true) {
	for (var i = 0; i < spd; ++i) {
	    if ((bbox_right < room_width) && (collision_line(bbox_right + tol, bbox_top + tol, bbox_right + tol, bbox_bottom - tol, obj_wall, 0, true) == noone)) {
			x++;
		} else {
			break;
		}	
	}
}

///// TIR //////////////////////////////////////////////////////



//tir avec le clic gauche
if (mouse_left) {
	if(cooldown <= 0) {
		instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_bullet);
		cooldown = 5;
	}
}

//diminue le cooldown
cooldown--;