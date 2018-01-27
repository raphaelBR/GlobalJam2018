/// @description  sprite_name(sprite_index)
/// @function  sprite_name
/// @param sprite_index

var sprite = argument[0]

if sprite == -1
    {
    return "NOONE"
    }
else
    {
    return string(sprite_get_name(sprite))
    }
