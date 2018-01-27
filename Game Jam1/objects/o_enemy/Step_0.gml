// Direction
var l72CBC9AF_0 = false;
l72CBC9AF_0 = instance_exists(o_player);
if(l72CBC9AF_0)
{
	direction = point_direction(x, y, o_player.x, o_player.y);
	speed = spd;
}

image_angle = direction;

if(hp <= 0)
{
	instance_destroy();
}

// Range Mode
switch (state)
{
	case e_state1.normal:
	{
		speed = 7;
		if (distance_to_object(o_player) < 96) state = e_state1.explode;
	}
	break;
	case e_state1.explode:
	{
		speed = 0;
		object_set_sprite(0,s_explosion);
		alarm_set(0, timer)
	}
	break;
}

if instance_exists(o_player)
{
	direction = point_direction(x, y, o_player.x, o_player.y)
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