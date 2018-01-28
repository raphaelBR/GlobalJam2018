if (obj_player.visible = true) {
	r = irandom_range(0, 6)
	switch (r) {
	    case 0:
			audio_play_sound(snd_explosion1, 10, false)
			sprite_index = spr_explosionFire1
	        break;
	    case 1:
			audio_play_sound(snd_explosion2, 10, false)
			sprite_index = spr_explosionFire2
	        break;
	    case 2:
			audio_play_sound(snd_explosion3, 10, false)
			sprite_index = spr_explosionFire3
	        break;
	    case 3:
			audio_play_sound(snd_explosion4, 10, false)
			sprite_index = spr_explosionFire4
	        break;
	    case 4:
			audio_play_sound(snd_explosion5, 10, false)
			sprite_index = spr_explosionFire5
	        break;
	    case 5:
			audio_play_sound(snd_explosion6, 10, false)
			sprite_index = spr_explosionFire6
	        break;
	    case 6:
			audio_play_sound(snd_explosion7, 10, false)
			sprite_index = spr_explosionFire7
	        break;
	    default:
			audio_play_sound(snd_explosion1, 10, false)
			sprite_index = spr_explosionFire1
	        break;
	}
}