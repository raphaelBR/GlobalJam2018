/// @description  mouse_name(mouse_input)
/// @function  mouse_name
/// @param mouse_input

var mouse = argument[0]

if mouse == mb_none
    {
    return "NOONE"
    }
if mouse == mb_left
    {
    return "LEFT CLICK"
    }
if mouse == mb_right
    {
    return "RIGHT CLICK"
    }
if mouse == mb_middle
    {
    return "MIDDLE CLICK"
    }
