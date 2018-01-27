/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194C8CC9
/// @DnDArgument : "code" "//effect of slow$(13_10)if explosion = false {$(13_10)image_speed = 0$(13_10)speed = speed -0.1	$(13_10)}$(13_10)$(13_10)//effect speed because of explosion $(13_10)if obj_grenade.image_index = 1 <= 3 {$(13_10)	$(13_10)	if place_meeting(x,y,obj_grenade) {$(13_10)	}$(13_10)}"
//effect of slow
if explosion = false {
image_speed = 0
speed = speed -0.1	
}

//effect speed because of explosion 
if obj_grenade.image_index = 1 <= 3 {
	
	if place_meeting(x,y,obj_grenade) {
	}
}