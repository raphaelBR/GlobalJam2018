/// @description  button_is_activated(sprite, x, y)
/// @function  button_is_activated
/// @param sprite
/// @param  x
/// @param  y

button_sprite = argument[0]
button_x = argument[1]
button_y = argument[2]

if sprite_exists(button_sprite) == true
    {
    if button_is_selected(button_sprite, button_x, button_y) == true and mouse_check_button_released(mb_left) == true
        {
        return true
        }
    else
        {
        return false
        }
    }
