/// @description  step_intRface(*PLACE IN THE ENGINE'S [STEP END] EVENT*)
/// @function  step_intRface
/// @param *PLACE IN THE ENGINE'S [STEP END] EVENT*

// Controls
if current_menu == "in_game" and keyboard_check_pressed(vk_escape)
    {
    current_menu = "pause"
    game_paused = true
    instance_deactivate_all(true)
    }
else if current_menu == "main_menu"
    {
    if button_is_activated(sprite_start, main_menu_xstart, main_menu_ystart)
        {
        current_menu = "in_game"
        instance_activate_all()
        room_restart()
        }
    if button_is_activated(sprite_options, main_menu_xoptions, main_menu_yoptions)
        {
        current_menu = "options"
        }
    if button_is_activated(sprite_quit, main_menu_xquit, main_menu_yquit)
        {
        game_end()
        }
    }
else if current_menu == "options"
    {
    if button_is_activated(sprite_quit, options_xquit, options_yquit)
        {
        if game_paused == true
            {
            current_menu = "pause"
            }
        else
            {
            current_menu = "main_menu"
            }
        }
    if button_is_activated(sprite_fullscreen, options_xfullscreen, options_yfullscreen)
        {
        window_set_fullscreen(!window_get_fullscreen())
        }
    }
else if current_menu == "pause"
    {
    if button_is_activated(sprite_start, pause_xstart, pause_ystart)
        {
        game_paused = false
        current_menu = "in_game"
        instance_activate_all()
        }
    if button_is_activated(sprite_options, pause_xoptions, pause_yoptions)
        {
        current_menu = "options"
        }
    if button_is_activated(sprite_quit, pause_xquit, pause_xquit)
        {
        game_paused = false
        current_menu = "main_menu"
        }
    }
