if obj_player.life <= 2 && !second_phase{
	audio_stop_sound(snd_bg_healthy);
	audio_play_sound(snd_bg_neardeath,0,true);
	second_phase = true;
}