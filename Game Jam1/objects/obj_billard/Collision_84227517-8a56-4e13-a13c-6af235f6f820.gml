/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54A3AA72
/// @DnDArgument : "code" "if obj_grenade.image_index = 0 {$(13_10)	speed = 1$(13_10)	move_bounce_all(true)$(13_10)	rebounce = true$(13_10)}$(13_10)$(13_10)$(13_10)if obj_grenade.image_index = 1 <= 3 {$(13_10)	speed = 10$(13_10)	move_bounce_all(true)$(13_10)	rebounce = true$(13_10)}"
if obj_grenade.image_index = 0 {
	speed = 1
	move_bounce_all(true)
	rebounce = true
}


if obj_grenade.image_index = 1 <= 3 {
	speed = 10
	move_bounce_all(true)
	rebounce = true
}