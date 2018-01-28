if obj_player.life <= 2 && !second_phase{
	audio_stop_sound(snd_bg_healthy);
	audio_play_sound(snd_bg_neardeath,0,true);
	second_phase = true;
}

if keyboard_check_pressed (vk_f1) {
	window_set_fullscreen(!window_get_fullscreen())
}
if keyboard_check_pressed (vk_f2) {
	room_restart()	
}