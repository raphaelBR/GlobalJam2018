/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 194C8CC9
/// @DnDArgument : "code" "//effect of slow$(13_10)if explosion = false {$(13_10)image_speed = 0$(13_10)speed = speed -0.1	$(13_10)}$(13_10)$(13_10)$(13_10)//explosion$(13_10)if speed <= 0 {$(13_10)explosion = true$(13_10)}$(13_10)$(13_10)if image_index >= 3 {$(13_10)instance_destroy()$(13_10)}$(13_10)$(13_10)if explosion = true {$(13_10)	image_speed = 10$(13_10)	/*if place_meeting(x,y,obj_enemy) {$(13_10)		instance_destroy(obj_enemy)$(13_10)	}*/$(13_10)}$(13_10)$(13_10)//traine de feu$(13_10)if fire = true {$(13_10)	repeat(5) {$(13_10)	effect_create_above(ef_firework, random_range(x-10, x+10), random_range(y-10, y+10), choose(1, 50, 100), choose(c_red));$(13_10)	}$(13_10)	fire = false$(13_10)}"
//effect of slow
if explosion = false {
image_speed = 0
speed = speed -0.1	
}


//explosion
if speed <= 0 {
explosion = true
}

if image_index >= 3 {
instance_destroy()
}

if explosion = true {
	image_speed = 10
	/*if place_meeting(x,y,obj_enemy) {
		instance_destroy(obj_enemy)
	}*/
}

//traine de feu
if fire = true {
	repeat(5) {
	effect_create_above(ef_firework, random_range(x-10, x+10), random_range(y-10, y+10), choose(1, 50, 100), choose(c_red));
	}
	fire = false
}/**/