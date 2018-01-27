/// @description  draw_upgrade_button(sprite, x, y, visible, unlocked, available, purchased)
/// @function  draw_upgrade_button
/// @param sprite
/// @param  x
/// @param  y
/// @param  visible
/// @param  unlocked
/// @param  available
/// @param  purchased

button_sprite = argument[0]
button_x = argument[1]
button_y = argument[2]
button_visible = argument[3]
button_unlocked = argument[4]
button_available = argument[5]
button_purchased = argument[6]

if sprite_exists(button_sprite) == true
    {
    if button_purchased == true
        {
        draw_sprite(button_sprite, 6, button_x, button_y)
        }
    else
        {
        if button_visible == true
            {
            if button_unlocked == true
                {
                if button_available == true
                    {
                    if button_is_selected(button_sprite, button_x, button_y) == true
                        {
                        if mouse_check_button(mb_left) == true
                            {
                            draw_sprite(button_sprite, 5, button_x, button_y)
                            }
                        else
                            {
                            draw_sprite(button_sprite, 4, button_x, button_y)
                            }
                        }
                    else
                        {
                        draw_sprite(button_sprite, 3, button_x, button_y)
                        }
                    }
                else
                    {
                    draw_sprite(button_sprite, 2, button_x, button_y)
                    }
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
    }
