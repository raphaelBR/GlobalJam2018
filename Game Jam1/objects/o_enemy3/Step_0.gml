// Direction
var l72CBC9AF_0 = false;
l72CBC9AF_0 = instance_exists(o_player);
if(l72CBC9AF_0)
{
	direction = point_direction(x, y, o_player.x, o_player.y);
	speed = spd;
}

image_angle = direction;

// Range Mode
switch (state)
{
	case e_state3.normal:
	{
		speed = 3;
		if (distance_to_object(o_player) < 96) state = e_state3.shield;
	}
	break;
	case e_state3.shield:
	{
		speed = 1;
		object_set_sprite(0,s_shield);
		with(o_enemy_bullet) instance_destroy();
		if (distance_to_object(o_player) > 120) state = e_state3.normal;
	}
	break;
}

// Death
if dying = true
{
	if(hp <= 0)
	{
		sprite_index = s_explosion
		{
			instance_destroy()
		}
	}
}