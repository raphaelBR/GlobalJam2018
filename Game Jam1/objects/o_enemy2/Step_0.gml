// FireRate
var l279BA994_0 = false;
l279BA994_0 = instance_exists(o_player);
if(l279BA994_0)
{
	if(cooldown <= 0)
	{
		direction = point_direction(x, y, o_player.x, o_player.y);
		speed = spd;
		instance_create_layer(x + 0, y + 0, "Bullets", o_enemy_bullet);
		cooldown = 20;
	}
}

cooldown += -1;

image_angle = direction;

// Range Mode
switch (state)
{
	case e_state2.normal:
	{
		speed = 0;
		if (distance_to_object(o_player) < 96) state = e_state2.retrait;
	}
	break;
	case e_state2.retrait:
	{
		speed = 4
		if (distance_to_object(o_player) > 120) state = e_state2.normal;
	}
	break;
}

if instance_exists(o_player)
{
	direction = point_direction(o_player.x, o_player.y, x, y)
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