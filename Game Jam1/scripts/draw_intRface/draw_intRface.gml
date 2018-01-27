// draw_intRface(*PLACE IN THE ENGINE'S [DRAW GUI END] EVENT*)

draw_set_halign(fa_center)
draw_set_valign(fa_center)

// Main Menu
if current_menu == "main_menu"
    {
    if background_exists(main_menu_background) == true
        {
        draw_background_stretched(main_menu_background, window_get_x(), window_get_y(), window_get_width(), window_get_height())
        }
    draw_menu_button(sprite_start, main_menu_xstart, main_menu_ystart)
    draw_menu_button(sprite_options, main_menu_xoptions, main_menu_yoptions)
    draw_menu_button(sprite_quit, main_menu_xquit, main_menu_yquit)
    }

// Options
if current_menu == "options"
    {
    if background_exists(options_background) == true
        {
        draw_background_stretched(options_background, window_get_x(), window_get_y(), window_get_width(), window_get_height())
        }
    draw_menu_button(sprite_quit, options_xquit, options_yquit)
    draw_menu_button(sprite_fullscreen, options_xfullscreen, options_yfullscreen)
    }

// Pause
if current_menu == "pause"
    {
    if background_exists(pause_background) == true
        {
        draw_background_stretched(pause_background, window_get_x(), window_get_y(), window_get_width(), window_get_height())
        }
    draw_menu_button(sprite_start, pause_xstart, pause_ystart)
    draw_menu_button(sprite_options, pause_xoptions, pause_yoptions)
    draw_menu_button(sprite_quit, pause_xquit, pause_yquit)
    }
