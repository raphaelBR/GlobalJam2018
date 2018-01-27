///@description PLAYER CHECKS

//Life
if life <=0 {
room_restart()	
}

//variables
mouse_left = mouse_check_button(mb_left);
mouse_right = mouse_check_button(mb_right);
mouse_right_released = mouse_check_button_released(mb_right);
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


//tir avec le clic gauche
if (mouse_left) {
	if(cooldown <= 0) {
		instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_grenade);
		cooldown = 5;
	}
}


//Coup de melee (extinction)

if (mouse_right) && recuperation = false {
obj_extinctionCone.damage = true
extinction = extinction - 1
}

if extinction <= 0 {
	mouse_right = false
}

if extinction >= 30 && mouse_right = false {
	recuperation = 
}


//diminue le cooldown
cooldown--;