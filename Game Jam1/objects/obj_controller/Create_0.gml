if !audio_is_playing(snd_bg_healthy){
	
	if audio_is_playing(snd_bg_neardeath) {
		audio_stop_sound(snd_bg_neardeath);
	}
	
	audio_play_sound(snd_bg_healthy,0,true);
}

score = 0
secondPerPoint = 0.05
boost = false
boost_timer = 0;

alarm_set(0, secondPerPoint * room_speed)
second_phase = true;

barrelSpawn_timer = 0;