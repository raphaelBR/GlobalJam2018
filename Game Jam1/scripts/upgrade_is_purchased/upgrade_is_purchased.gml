/// @description  upgrade_is_purchased(sprite, x, y, visible, unlocked, available, purchased)
/// @function  upgrade_is_purchased
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
    if button_purchased == false and button_visible == true and button_unlocked == true and button_available == true and button_is_activated(button_sprite, button_x, button_y) == true
        {
        return true
        }
    else
        {
        return false
        }
    }
