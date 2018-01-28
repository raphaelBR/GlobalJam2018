r = irandom_range(0, 6)
switch (r) {
    case 0:
		audio_play_sound(snd_explosion1, 10, false)
        break;
    case 1:
		audio_play_sound(snd_explosion2, 10, false)
        break;
    case 2:
		audio_play_sound(snd_explosion3, 10, false)
        break;
    case 3:
		audio_play_sound(snd_explosion4, 10, false)
        break;
    case 4:
		audio_play_sound(snd_explosion5, 10, false)
        break;
    case 5:
		audio_play_sound(snd_explosion6, 10, false)
        break;
    case 6:
		audio_play_sound(snd_explosion7, 10, false)
        break;
    default:
		audio_play_sound(snd_explosion1, 10, false)
        break;
}