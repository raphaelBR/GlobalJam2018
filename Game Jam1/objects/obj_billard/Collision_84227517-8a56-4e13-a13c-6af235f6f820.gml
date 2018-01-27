/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54A3AA72
/// @DnDArgument : "code" "$(13_10)//rebounce forte si la grenade est rapide$(13_10)if obj_grenade.speed > 6.5 {$(13_10)	speed = 10$(13_10)	move_bounce_all(true)$(13_10)	rebounce = true$(13_10)}$(13_10)$(13_10)//rebounce faible si la grenade est lente$(13_10)if obj_grenade.speed <= 3 {$(13_10)	speed = 3$(13_10)	move_bounce_all(true)$(13_10)	rebounce = true$(13_10)}$(13_10)$(13_10)//rebounce TRES GRANDE si la grenade explose$(13_10)if obj_grenade.speed <= 0 {$(13_10)	speed = 10$(13_10)	move_bounce_all(true)$(13_10)	rebounce = true$(13_10)}"

//rebounce forte si la grenade est rapide
if obj_grenade.speed > 6.5 {
	speed = 10
	move_bounce_all(true)
	rebounce = true
}

//rebounce faible si la grenade est lente
if obj_grenade.speed <= 3 {
	speed = 3
	move_bounce_all(true)
	rebounce = true
}

//rebounce TRES GRANDE si la grenade explose
if obj_grenade.speed <= 0 {
	speed = 10
	move_bounce_all(true)
	rebounce = true
}