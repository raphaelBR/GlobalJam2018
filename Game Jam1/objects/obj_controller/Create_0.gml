if !audio_is_playing(snd_bg_healthy){
	
	if audio_is_playing(snd_bg_neardeath) {
		audio_stop_sound(snd_bg_neardeath);
	}
	
	audio_play_sound(snd_bg_healthy,0,true);
}

second_phase = true;