reverse = true
instance_create_layer(x, y, "Tiles", obj_groundToxin)
if (obj_player.visible == true) {
	audio_play_sound(snd_validate, 10, false)
}