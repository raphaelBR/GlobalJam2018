/// @description enable_movement_air_jump(height, input)
/// @function enable_movement_air_jump
/// @param height
/// @param  input
/*
    Call this script in order to add platform double jumping
    (air jumping) to a movement entity.
*/

var height = argument[0]; // Jump height
var input = argument[1]; // Jump input

// Air jump
if place_meeting(x, y+1, collision_object) == false and air_jump == true and input == true
    {
    vsp[0] = -height
    air_jump = false
    }
