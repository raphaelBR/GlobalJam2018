/// @description  draw_menu_button(sprite, x, y)
/// @function  draw_menu_button
/// @param sprite
/// @param  x
/// @param  y

button_sprite = argument[0]
button_x = argument[1]
button_y = argument[2]

if sprite_exists(button_sprite) == true
        {
        if button_is_selected(button_sprite, button_x, button_y)
            {
            if mouse_check_button(mb_left) == true
                {
                draw_sprite(button_sprite, 2, button_x, button_y)
                }
            else
                {
                draw_sprite(button_sprite, 1, button_x, button_y)
                }
            }
        else
            {
            draw_sprite(button_sprite, 0, button_x, button_y)
            }
        }
