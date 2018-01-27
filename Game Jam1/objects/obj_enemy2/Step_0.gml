var l3E76AB5B_0 = false;
l3E76AB5B_0 = instance_exists(obj_player);
if(l3E76AB5B_0)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = spd;
}

image_angle = direction;

if(hp <= 0)
{
	with(obj_score) {
	thescore += 5;
	
	}

	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	audio_play_sound(snd_death, 0, 0);

	instance_destroy();
}