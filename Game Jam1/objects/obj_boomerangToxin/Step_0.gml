//effect of slow
if comeback = false {
speed = speed-0.1	
}


//effect of comeback
if speed <= 0 {
comeback = true	
}

if comeback = true {
direction = point_direction(x, y, obj_player.x, obj_player.y)
image_angle = direction;
speed = speed+0.2
}


//boomrang destroy
if place_meeting(x, y, obj_player) && comeback = true{
instance_destroy();
}