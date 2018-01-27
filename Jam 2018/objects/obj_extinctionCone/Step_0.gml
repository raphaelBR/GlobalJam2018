/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3BC52810
/// @DnDArgument : "code" "x = obj_player.x$(13_10)y = obj_player.y$(13_10)$(13_10)direction = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)image_angle = direction;$(13_10)$(13_10)if damage = false {$(13_10)	image_index = 0$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if damage = true {$(13_10)	image_index = 1$(13_10)	if place_meeting(x, y, obj_enemy)$(13_10)	instance_destroy(obj_enemy) {$(13_10)	}$(13_10)}$(13_10)	"
x = obj_player.x
y = obj_player.y

direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;

if damage = false {
	image_index = 0
}



if damage = true {
	image_index = 1
	if place_meeting(x, y, obj_enemy)
	instance_destroy(obj_enemy) {
	}
}