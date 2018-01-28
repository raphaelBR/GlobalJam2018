if (vulnerable == true) {
	life--
	if (life = 0) {
		audio_play_sound(snd_death, 10, false)
		room_restart()
	} else {
		vulnerable = false;
		alarm_set(0, vulnerable_cd * room_speed)
		obj_playerHead.image_blend = c_red
		obj_playerHead.image_alpha = 0.5
		audio_play_sound(snd_hit, 10, false)
	}
}
instance_destroy(other);