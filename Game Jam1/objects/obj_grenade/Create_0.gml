/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0535CEE3
/// @DnDArgument : "code" "direction = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)image_angle = direction;$(13_10)$(13_10)speed = 10;$(13_10)$(13_10)explosion = false$(13_10)$(13_10)fire = false$(13_10)alarm_set(0,35)"
direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;

speed = 10;

explosion = false

fire = false
alarm_set(0,35)