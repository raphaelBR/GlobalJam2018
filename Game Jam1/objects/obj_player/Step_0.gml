if (visible ==true) {
	mouse_left = mouse_check_button(mb_left);
	mouse_right = mouse_check_button(mb_right);
	spacebar = keyboard_check(vk_space);

	move_up = keyboard_check(ord("W"));
	move_down = keyboard_check(ord("S"));
	move_left = keyboard_check(ord("A"));
	move_right = keyboard_check(ord("D"));
	tol = 1;

	if (move_up || move_down || move_left || move_right) {
		obj_playerHead.image_speed = 1
	} else {
		obj_playerHead.image_speed = 0
		obj_playerHead.image_index = 0
	}

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

	if (spacebar == true && can_extinct == true) {
			obj_extinctionCone.active = true;
			//jouer le son
			if !audio_is_playing(snd_extinct) {
				audio_play_sound(snd_extinct,0,false);
			}
			extinction = clamp(extinction - extinctionDrop / room_speed, 0, 100);
			if (extinction == 0) {
				can_extinct = false;
			}
	} else {
		obj_extinctionCone.active = false;
		//arrêter le son
		audio_stop_sound(snd_extinct);
		extinction = clamp(extinction + extinctionGain / room_speed, 0, 100);
		if (can_shoot == true) {
			if (mouse_left == true) {
				instance_create_layer(x, y, "Bullets", obj_grenadeFire);
				can_shoot = false;
				alarm_set(1, grenade_cd * room_speed)
			} else if (mouse_right == true) {
				instance_create_layer(x, y, "Bullets", obj_boomerangToxin);
				can_shoot = false;
				alarm_set(1, boomerang_cd * room_speed)
			}
		}

		if (obj_playerHead.image_blend == c_red) {
			obj_playerHead.image_blend = c_white
		}
		if (can_extinct == false && extinction >= extinctionCap) {
			can_extinct = true
		}

		if (shit == true) {
			view_xport[0] = random_range(-shitIntensity, shitIntensity)
			view_yport[0] = random_range(-shitIntensity, shitIntensity)
		}
	}
	if (can_extinct == false && extinction >= extinctionCap) {
		can_extinct = true
	}

	if (shit == true) {
		view_xport[0] = random_range(-shitIntensity, shitIntensity)
		view_yport[0] = random_range(-shitIntensity, shitIntensity)
	}
} else {
	vulnerable = false
}