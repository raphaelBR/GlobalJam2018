/// @description  draw_dialogue(head sprite, head left, text string)
/// @function  draw_dialogue
/// @param head sprite
/// @param  head left
/// @param  text string

character_sprite = argument[0]
character_left = argument[1]
dialogue_text = argument[2]

draw_set_colour(text_color)
draw_set_font(text_font)
draw_set_valign(fa_bottom)
draw_rectangle_colour(0, window_get_height() - box_height, window_get_width(), window_get_height(), box_color1, box_color2, box_color3, box_color4, false)
draw_line_width_colour(-border_height, window_get_height() - box_height, window_get_width(), window_get_height() - box_height, border_height, border_color1, border_color2)
draw_set_valign(fa_top)

if sprite_exists(character_sprite) == true
    {
    if character_left == true
        {
        draw_set_halign(fa_left)
        draw_sprite(character_sprite, 0, 0, window_get_height())
        draw_text_ext(sprite_get_width(character_sprite) + border_height, window_get_height() - box_height + border_height, string_hash_to_newline(string(dialogue_text)), -1, window_get_width() - sprite_get_width(character_sprite) - (2 * border_height))
        }
    else
        {
        draw_set_halign(fa_right)
        draw_sprite(character_sprite, 0, window_get_width(), window_get_height())
        draw_set_halign(fa_left)
        draw_text_ext(border_height, window_get_height() - box_height + border_height, string_hash_to_newline(string(dialogue_text)), -1, window_get_width() - sprite_get_width(character_sprite) - (2 * border_height))
        }
    }
else
    {
    draw_set_halign(fa_left)
    draw_text_ext(border_height, window_get_height() - box_height + border_height, string_hash_to_newline(string(dialogue_text)), -1, window_get_width() - (2 * border_height))
    }
