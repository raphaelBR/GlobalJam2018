/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194C8CC9
/// @DnDArgument : "code" "//effect of slow$(13_10)if comeback = false {$(13_10)speed = speed-0.1	$(13_10)}$(13_10)$(13_10)$(13_10)//effect of comeback$(13_10)if speed <= 0 {$(13_10)comeback = true	$(13_10)}$(13_10)$(13_10)if comeback = true {$(13_10)direction = point_direction(x, y, obj_player.x, obj_player.y)$(13_10)image_angle = direction;$(13_10)speed = speed+0.2$(13_10)}$(13_10)$(13_10)$(13_10)//boomrang destroy$(13_10)if place_meeting(x, y, obj_player) && comeback = true{$(13_10)instance_destroy();$(13_10)}"
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