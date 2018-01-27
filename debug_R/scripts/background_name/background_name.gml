/// @description  background_name(background_index)
/// @function  background_name
/// @param background_index

var background = argument[0]

if background == -1
    {
    return "NOONE"
    }
else
    {
    return string(background_get_name(background))
    }
