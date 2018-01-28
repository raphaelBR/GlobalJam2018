speedMax = 8
slower = 3
faster = 3
reverse = false

speed = speedMax
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction

//joue le son
if !audio_is_playing(snd_saw){
	audio_play_sound(snd_saw,0,false);
}