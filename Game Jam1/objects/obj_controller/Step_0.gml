///@description MUSIC/SPAWNER

//changement de musique à deux de vies
if (obj_player.life <= 2 && second_phase) {
	audio_stop_sound(snd_bg_healthy);
	audio_play_sound(snd_bg_neardeath,0,true);
	second_phase = false;
}

//spawner de barils
nb_barrelFire = instance_number(obj_barrelFire);
nb_barrelToxin = instance_number(obj_barrelToxin);
nb_barrelBullets = instance_number(obj_barrelBullets);


r = irandom_range(0,6);
x_spawn = round(random_range(room_width/5,room_width-(room_width/5) / global.tilingY) * global.tilingY)
y_spawn = round(random_range(room_height/5,room_height-(room_height/5) / global.tilingY) * global.tilingY)
//vérifie qu'il est au moins à 100px du joueur
spawn_check = ((x_spawn - obj_player.x >= 100 || x_spawn - obj_player.x <= -100) && (y_spawn - obj_player.y >= 100 || y_spawn - obj_player.y <= -100));
//vérifie qu'il n'y a pas d'autres objets
meeting_check = !place_meeting(x_spawn,y_spawn,obj_barrelFire) && !place_meeting(x_spawn,y_spawn,obj_barrelToxin) && !place_meeting(x_spawn,y_spawn,obj_barrelBullets)

if nb_barrelFire + nb_barrelToxin + nb_barrelBullets < 3{
	
	barrelSpawn_timer++;
	
	if barrelSpawn_timer > 30 && spawn_check && meeting_check {
		
		barrelSpawn_timer = 0;
		
		switch (r) {
		    case 0:
				//rien - no spawn
		        break;
		    case 1:
				//rien - no spawn
		        break;
		    case 2:
				//barrel fire
				instance_create_layer(x_spawn, y_spawn, "Instances", obj_barrelFire)
		        break;
		    case 3:
				//barrel fire
				instance_create_layer(x_spawn, y_spawn, "Instances", obj_barrelFire)
				break;
		    case 4:
				//barrel toxin
				instance_create_layer(x_spawn, y_spawn, "Instances", obj_barrelToxin)
		        break;
		    case 5:
				//barrel toxin
				instance_create_layer(x_spawn, y_spawn, "Instances", obj_barrelToxin)
		        break;
			case 6:
				//barrel bullets
				instance_create_layer(x_spawn, y_spawn, "Instances", obj_barrelBullets)
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