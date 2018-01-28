if (vulnerable == true) {
	life--
	if (life = 0) {
		visible = false;
	} else {
		vulnerable = false;
		alarm_set(0, vulnerable_cd * room_speed)
		obj_playerHead.image_blend = c_red
		obj_playerHead.image_alpha = 0.5
		audio_play_sound(snd_hit, 10, false)
		shit = true
		alarm_set(2, shitDuration * room_speed)
	}
}