if !audio_is_playing(snd_bg_healthy){
	
	if audio_is_playing(snd_bg_neardeath) {
		audio_stop_sound(snd_bg_neardeath);
	}
	
	audio_play_sound(snd_bg_healthy,0,true);
}

second_phase = false;
score = 0
secondPerPoint = 0.1
boost = false

alarm_set(0, secondPerPoint * room_speed)
second_phase = true;

barrelSpawn_timer = 0;