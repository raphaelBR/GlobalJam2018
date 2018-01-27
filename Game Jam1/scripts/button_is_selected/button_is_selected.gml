/// @description  button_is_selected(sprite, x, y)
/// @function  button_is_selected
/// @param sprite
/// @param  x
/// @param  y

button_sprite = argument[0]
button_x = argument[1]
button_y = argument[2]

if sprite_exists(button_sprite) == true
    {
    if (button_x - sprite_get_width(button_sprite) / 2) < window_mouse_get_x() and window_mouse_get_x() < (button_x + sprite_get_width(button_sprite) / 2) and (button_y - sprite_get_height(button_sprite) / 2) < window_mouse_get_y() and window_mouse_get_y() < (button_y + sprite_get_height(button_sprite) / 2)
        {
        return true
        }
    else
        {
        return false
        }
    }
