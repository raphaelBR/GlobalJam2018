/// @description  object_name(object index)
/// @function  object_name
/// @param object index

var object = argument[0]

if object == -1
    {
    return "NOONE"
    }
else
    {
    return string(object_get_name(object))
    }
