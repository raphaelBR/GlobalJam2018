///@description MUSIC/SPAWNER

//changement de musique à deux de vies
if obj_player.life <= 2 && second_phase{
	audio_stop_sound(snd_bg_healthy);
	audio_play_sound(snd_bg_neardeath,0,true);
	second_phase = false;
}

//spawner de barils
r = irandom_range(0,6);

if instance_number(obj_barrelFire)+instance_number(obj_barrelBullets)+instance_number(obj_barrelToxin) < 3{
	switch (r) {
	    case 0:
			//rien - no spawn
	        break;
	    case 1:
			//rien - no spawn
	        break;
	    case 2:
			//barrel fire
			instance_create_layer(random_range(room_width/5,room_width-(room_width/5)), random_range(room_height/5,room_height-(room_height/5)), "Instances", obj_barrelFire)
	        break;
	    case 3:
			//barrel fire
			instance_create_layer(random_range(room_width/5,room_width-(room_width/5)), random_range(room_height/5,room_height-(room_height/5)), "Instances", obj_barrelFire)
			break;
	    case 4:
			//barrel toxin
			instance_create_layer(random_range(room_width/5,room_width-(room_width/5)), random_range(room_height/5,room_height-(room_height/5)), "Instances", obj_barrelToxin)
	        break;
	    case 5:
			//barrel toxin
			instance_create_layer(random_range(room_width/5,room_width-(room_width/5)), random_range(room_height/5,room_height-(room_height/5)), "Instances", obj_barrelToxin)
	        break;
		case 6:
			//barrel bullets
			instance_create_layer(random_range(room_width/5,room_width-(room_width/5)), random_range(room_height/5,room_height-(room_height/5)), "Instances", obj_barrelBullets)
	        break;
	    /*default:
	        break;*/
	}
}
