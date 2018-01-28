count = instance_number(obj_groundFire) + instance_number(obj_groundToxin)
audio_sound_gain(snd_fire, count / 250, 0.1 * room_speed);

nb_barrelFire = instance_number(obj_barrelFire);
nb_barrelToxin = instance_number(obj_barrelToxin);
nb_barrelBullets = instance_number(obj_barrelBullets);


r = irandom_range(0,6);
do {
	x_spawn = round(random_range(room_width/5,room_width-(room_width/5)) / global.tilingY) * global.tilingY
	y_spawn = round(random_range(room_height/5,room_height-(room_height/5)) / global.tilingY) * global.tilingY
} until (point_distance(x_spawn, y_spawn, obj_player.x, obj_player.y) > 100);
meeting_check = !place_meeting(x_spawn,y_spawn,obj_barrelFire) && !place_meeting(x_spawn,y_spawn,obj_barrelToxin) && !place_meeting(x_spawn,y_spawn,obj_barrelBullets)

if nb_barrelFire + nb_barrelToxin + nb_barrelBullets < 3{
	
	barrelSpawn_timer++;
	
	if barrelSpawn_timer > barrelDelay * room_speed && meeting_check {
		
		barrelSpawn_timer = 0;
		
		switch (r) {
		    case 0:
		        break;
		    case 1:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelToxin)
		        break;
		    case 2:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelFire)
		        break;
		    case 3:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelFire)
				break;
		    case 4:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelBullets)
		        break;
		    case 5:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelToxin)
		        break;
			case 6:
				instance_create_layer(x_spawn, y_spawn, "Barrels", obj_barrelBullets)
		        break;
			default:
				break;
		}
	}
}

if keyboard_check_pressed (vk_f1) {
	window_set_fullscreen(!window_get_fullscreen())
}
if keyboard_check_pressed (vk_f2) {
	room_restart()	
}

if (obj_player.visible = false) {
	if !audio_is_playing(snd_gameover){
		audio_stop_all();
		audio_play_sound(snd_gameover,10,true)
	}
	if (wait = false) {
		if (keyboard_check_pressed (vk_space) or mouse_check_button_pressed(mb_left)) {
			room_restart()	
		}
		if (keyboard_check_pressed (vk_escape)) {
			game_restart()	
		}	
	}
}