/// @description  step_debugR(*PLACE IN THE ENGINE’S [STEP END] EVENT*)
/// @function  step_debugR
/// @param *PLACE IN THE ENGINE’S [STEP END] EVENT*

// GAME DATA
if global.debug_tab == 1
    {
    global.debug_text =
    "DIRECTORY PROGRAM: " + string(program_directory) + " #" +
    "DIRECTORY WORKING: " + string(working_directory) + " #" +
    "DIRECTORY SAVE: " + string(game_save_id) + " #" +
    "#" +
    "DATE: " + + string(day_name(current_weekday)) + " " + string(current_day) + " " + string(month_name(current_month)) + " " + string(current_year) + "#" +
    "HOUR: " + string(current_hour) + ":"  + string(current_minute) + ":"  + string(current_second) + "#" +
    "FPS: " + string(fps) + "#" +
    "TIME VALUE: " + string(current_time) + "#" +
    "CPU: " + string(fps_real) + "#" +
    "DELTA TIME: " + string(delta_time) + "#" +
    "RUN SINCE: " + string(date_time_of(get_timer())) + "#" +
    "INSTANCES COUNT: " + string(instance_count) + " #" +
    "#" +
    "GAME DISPLAY NAME: " + string(game_display_name) + "#" +
    "GAME PROJECT NAME: " + string(game_project_name) + "#" +
    "GAME ID: " + string(game_id) + "#" +
    "GAME VERSION: " + string(GM_version) + "#" +
    "#" +
    "OS TYPE: " + string(os_name(os_type)) + "#" +
    "OS VERSION: " + string(os_version_name(os_version)) + "#" +
    "OS LANGUAGE: " + string(os_get_language()) + "#" +
    "OS REGION: " + string(os_get_region()) + "#" +
    "OS DEVICE: " + string(os_device_name(os_device)) + "#" +
    "OS BROWSER: " + string(browser_name(os_browser)) + "#" +
    "OS PAUSE: " + string(boolean_name(os_is_paused())) + "#" +
    "#" +
    "ANTI-ALIASING AVAILABLES: " + string(aa_name(display_aa)) + "#" +
    "WEBGL ENABLED: " + string(boolean_name(webgl_enabled)) + "#" +
    "BROWSER WIDTH: " + string(browser_width) + "#" +
    "BROWSER HEIGHT: " + string(browser_height) + "#" +
    "#" +
    "WINDOW D3D POINTER: " + string(window_device()) + " #" +
    "WINDOW CAPTION: " + string(window_get_caption()) + " #" +
    "WINDOW COLOR: " + string(window_get_color()) + " #" + // COLOR
    "WINDOW CURSOR: " + string(cursor_name(window_get_cursor())) + " #" +
    "WINDOW FULLSCREEN: " + string(boolean_name(window_get_fullscreen())) + " #" +
    "WINDOW HEIGHT: " + string(window_get_height()) + " #" +
    "WINDOW WIDTH: " + string(window_get_width()) + " #" +
    "WINDOW X: " + string(window_get_x()) + " #" +
    "WINDOW Y: " + string(window_get_y()) + " #" +
    "WINDOW HANDLE: " + string(window_handle()) + " #" +
    "WINDOW HAS FOCUS: " + string(boolean_name(window_has_focus())) + " #"
    }

// ROOM DATA
else if global.debug_tab == 2
    {
    global.debug_text =
    "ROOM NAME: " + string(room_get_name(room)) + " #" +
    "ROOM INDEX: " + string(room) + " #" +
    "ROOM HEIGHT: " + string(room_height) + " #" +
    "ROOM WIDTH: " + string(room_width) + " #" +
    "ROOM SPEED: " + string(room_speed) + " #" +
    "ROOM PERSISTENT: " + string(boolean_name(room_persistent)) + " #" +
    //CLEAR DISPLAY BUFFER WITH WINDOW COLOUR
    "#" +
    "BACKGROUND INDEX: " + string(global.background_tracked) + " #" +
    "BACKGROUND VISIBLE: " + string(boolean_name(__background_get( e__BG.Visible, global.background_tracked ))) + " #" +
    "BACKGROUND NAME: " + string(background_name(__background_get( e__BG.Index, global.background_tracked ))) + " #" +
    "BACKGROUND SHOWCOLOR: " + string(boolean_name(__background_get_showcolour( ))) + " #" +
    "BACKGROUND ALPHA: " + string(__background_get( e__BG.Alpha, global.background_tracked )) + " #" +
    "BACKGROUND BLEND: " + string(__background_get( e__BG.Blend, global.background_tracked )) + " #" + // COLOR
    "BACKGROUND COLOR: " + string(__background_get_colour( )) + " #" + // COLOR
    "BACKGROUND FOREGROUND: " + string(boolean_name(__background_get( e__BG.Foreground, global.background_tracked ))) + " #" +
    "BACKGROUND HEIGHT: " + string(__background_get( e__BG.Height, global.background_tracked )) + " #" +
    "BACKGROUND WIDTH: " + string(__background_get( e__BG.Width, global.background_tracked )) + " #" +
    "BACKGROUND HTILED: " + string(boolean_name(__background_get( e__BG.HTiled, global.background_tracked ))) + " #" +
    "BACKGROUND VTILED: " + string(boolean_name(__background_get( e__BG.VTiled, global.background_tracked ))) + " #" +
    "BACKGROUND X: " + string(__background_get( e__BG.X, global.background_tracked )) + " #" +
    "BACKGROUND Y: " + string(__background_get( e__BG.Y, global.background_tracked )) + " #" +
    "BACKGROUND XSCALE: " + string(__background_get( e__BG.XScale, global.background_tracked )) + " #" +
    "BACKGROUND YSCALE: " + string(__background_get( e__BG.YScale, global.background_tracked )) + " #" +
    "BACKGROUND HSPEED: " + string(__background_get( e__BG.HSpeed, global.background_tracked )) + " #" +
    "BACKGROUND VSPEED: " + string(__background_get( e__BG.VSpeed, global.background_tracked )) + " #" +
    "#" +
    "VIEW INDEX: " + string(global.view_tracked) + " #" +
    "VIEW ENABLED: " + string(boolean_name(view_enabled)) + " #" +
    "VIEW VISIBLE: " + string(boolean_name(__view_get( e__VW.Visible, global.view_tracked ))) + " #" +
    "VIEW XVIEW: " + string(__view_get( e__VW.XView, global.view_tracked )) + " #" +
    "VIEW YVIEW: " + string(__view_get( e__VW.YView, global.view_tracked )) + " #" +
    "VIEW WVIEW: " + string(__view_get( e__VW.WView, global.view_tracked )) + " #" +
    "VIEW HVIEW: " + string(__view_get( e__VW.HView, global.view_tracked )) + " #" +
    "VIEW XPORT: " + string(__view_get( e__VW.WPort, global.view_tracked )) + " #" +
    "VIEW YPORT: " + string(__view_get( e__VW.YPort, global.view_tracked )) + " #" +
    "VIEW WPORT: " + string(__view_get( e__VW.WPort, global.view_tracked )) + " #" +
    "VIEW HPORT: " + string(__view_get( e__VW.HPort, global.view_tracked )) + " #" +
    "VIEW OBJECT: " + string(object_name(__view_get( e__VW.Object, global.view_tracked ))) + " #" +
    "VIEW HBORDER: " + string(__view_get( e__VW.HBorder, global.view_tracked )) + " #" +
    "VIEW VBORDER: " + string(__view_get( e__VW.VBorder, global.view_tracked )) + " #" +
    "VIEW HSPEED: " + string(__view_get( e__VW.HSpeed, global.view_tracked )) + " #" +
    "VIEW VSPEED: " + string(__view_get( e__VW.VSpeed, global.view_tracked )) + "#" +
    "VIEW ANGLE: " + string(__view_get( e__VW.Angle, global.view_tracked )) + "#"
    }

// INPUTS DATA
else if global.debug_tab == 3
    {
    global.debug_text =
        "KEYBOARD KEY: " + string(keyboard_name(keyboard_key)) + " ; " + string(keyboard_key) + "#" +
        "KEYBOARD LAST KEY: " + string(keyboard_name(keyboard_lastkey)) + " ; " + string(keyboard_lastkey) + "#" +
        "KEYBOARD NUMLOCK: " + string(boolean_name(keyboard_get_numlock())) + "#" +
        "KEYBOARD LAST CHAR: " + string(keyboard_lastchar) + "#" +
        "KEYBOARD STRING: " + string(keyboard_string) + "#" +
        "#" +
        "MOUSE BUTTON: " + string(mouse_name(mouse_button)) + "#" +
        "MOUSE X (ROOM): " + string(mouse_x) + "#" +
        "MOUSE Y (ROOM): " + string(mouse_y) + "#" +
        "MOUSE X (VIEWS): " + string(window_views_mouse_get_x()) + "#" +
        "MOUSE X (VIEWS): " + string(window_views_mouse_get_y()) + "#" +
        "MOUSE Y (WINDOW): " + string(window_mouse_get_x()) + "#" +
        "MOUSE Y (WINDOW): " + string(window_mouse_get_y()) + "#" +
        "#"
        if os_device != device_ios_unknown
            {
            global.debug_text = global.debug_text +
            "DEVICE KEYPAD OPEN: " + string(boolean_name(device_is_keypad_open())) + "#" +
            "DEVICE TILT X: " + string(device_get_tilt_x()) + "#" +
            "DEVICE TILT Y: " + string(device_get_tilt_y()) + "#" +
            "DEVICE TILT Z: " + string(device_get_tilt_z()) + "#" +
            "#"
            }
        global.debug_text = global.debug_text +
        "GAMEPADS SUPPORTED: " + string(boolean_name(gamepad_is_supported())) + "#"
        if gamepad_is_supported() == true
            {
            global.debug_text = global.debug_text +
                "GAMEPADS SLOTS: " + string(gamepad_get_device_count()) + "#" +
                "#"
            i = 0
            j = false
            while i < gamepad_get_device_count()
                {
                if gamepad_is_connected(i) == true
                    {
                    j = true
                    global.debug_text = global.debug_text +
                        "GAMEPAD CONNECTED SLOT: " + string(i) + "#" +
                        "GAMEPAD " + string(i) + " DESCRIPTION: " + string(gamepad_get_description(i)) + "#" +
                        "GAMEPAD " + string(i) + " AXIS NUMBER: " + string(gamepad_axis_count(i)) + "#" +
                        "GAMEPAD " + string(i) + " AXIS DEADZONE: " + string(gamepad_get_axis_deadzone(i)) + "#" +
                        "GAMEPAD " + string(i) + " BUTTONS NUMBER: " + string(gamepad_button_count(i)) + "#" +
                        "GAMEPAD " + string(i) + " BUTTONS THRESHOLD: " + string(gamepad_get_button_threshold(i)) + "#" +
                        "GAMEPAD " + string(i) + " FACE1 (A or X): " + string(boolean_name(gamepad_button_check(i, gp_face1))) + "#" +
                        "GAMEPAD " + string(i) + " FACE2 (B or O): " + string(boolean_name(gamepad_button_check(i, gp_face2))) + "#" +
                        "GAMEPAD " + string(i) + " FACE3 (X or []): " + string(boolean_name(gamepad_button_check(i, gp_face3))) + "#" +
                        "GAMEPAD " + string(i) + " FACE4 (Y or /\\): " + string(boolean_name(gamepad_button_check(i, gp_face4))) + "#" +
                        "GAMEPAD " + string(i) + " LEFT SHOULDER: " + string(boolean_name(gamepad_button_check(i, gp_shoulderl))) + "#" +
                        "GAMEPAD " + string(i) + " LEFT TRIGGER: " + string(boolean_name(gamepad_button_check(i, gp_shoulderlb))) + " ; " + string(gamepad_button_value(i, gp_shoulderlb)) + "#" +
                        "GAMEPAD " + string(i) + " RIGHT SHOULDER: " + string(boolean_name(gamepad_button_check(i, gp_shoulderr))) + "#" +
                        "GAMEPAD " + string(i) + " RIGHT TRIGGER: " + string(boolean_name(gamepad_button_check(i, gp_shoulderrb))) + " ; " + string(gamepad_button_value(i, gp_shoulderrb)) + "#" +
                        "GAMEPAD " + string(i) + " SELECT: " + string(boolean_name(gamepad_button_check(i, gp_select))) + "#" +
                        "GAMEPAD " + string(i) + " START: " + string(boolean_name(gamepad_button_check(i, gp_start))) + "#" +
                        "GAMEPAD " + string(i) + " D-PAD UP: " + string(boolean_name(gamepad_button_check(i, gp_padu))) + "#" +
                        "GAMEPAD " + string(i) + " D-PAD DOWN: " + string(boolean_name(gamepad_button_check(i, gp_padd))) + "#" +
                        "GAMEPAD " + string(i) + " D-PAD LEFT: " + string(boolean_name(gamepad_button_check(i, gp_padl))) + "#" +
                        "GAMEPAD " + string(i) + " D-PAD RIGHT: " + string(boolean_name(gamepad_button_check(i, gp_padr))) + "#" +
                        "GAMEPAD " + string(i) + " RIGHT STICK: " + string(boolean_name(gamepad_button_check(i, gp_stickr))) + "#" +
                        "GAMEPAD " + string(i) + " RIGHT V AXIS: " + string(gamepad_axis_value(i, gp_axisrv)) + " #" +
                        "GAMEPAD " + string(i) + " RIGHT H AXIS: " + string(gamepad_axis_value(i, gp_axisrh)) + " #" +
                        "GAMEPAD " + string(i) + " LEFT STICK: " + string(boolean_name(gamepad_button_check(i, gp_stickl))) + "#" +
                        "GAMEPAD " + string(i) + " LEFT V AXIS: " + string(gamepad_axis_value(i, gp_axislv)) + " #" +
                        "GAMEPAD " + string(i) + " LEFT H AXIS: " + string(gamepad_axis_value(i, gp_axislh)) + " #" +
                        "#"
                    }
                i = i + 1
                }
        if j == false
            {
            global.debug_text = global.debug_text +
                "NO GAMEPAD CONNECTED #" +
                "#"
            }
        }
    }

// NETWORK DATA
else if global.debug_tab == 4
    {
    global.debug_text =
        "ASYNC LOAD: " + string(async_load) + "#" +
        "#" +
        "URL DOMAIN: " + string(url_get_domain()) + " #" +
        "#" +
        "ACHIEVEMENTS AVAILABLES: " + string(boolean_name(achievement_available())) + " #" +
        "ACHIEVEMENTS LOGIN STATUS: " + string(boolean_name(achievement_login_status())) + " #" +
        "#" +
        "FACEBOOK ACCESS TOKEN: " + string(facebook_accesstoken()) + " #" +
        "FACEBOOK STATUS: " + string(facebook_status()) + " #" +
        "FACEBOOK USER ID: " + string(facebook_user_id()) + " #" +
        "#" +
        "IAP AVAILABLE: " + string(boolean_name(iap_available)) + " #" +
        "IAP STATUS: " + string(iap_status_name(iap_status())) + " #" +
        "#" +
        "STEAM INITIALISED: " + string(boolean_name(steam_initialised())) + " #"
        if steam_initialised() == true
            {
            global.debug_text = global.debug_text +
                "STEAM AVAILABLE LANGUAGES: " + string(steam_available_languages()) + " #" +
                "STEAM CURRENT GAME LANGUAGE: " + string(steam_current_game_language()) + " #" +
                "STEAM APP ID: " + string(steam_get_app_id()) + " #" +
                "STEAM PERSONA NAME: " + string(steam_get_persona_name()) + " #" +
                "STEAM QUOTA FREE: " + string(steam_get_quota_free()) + " #" +
                "STEAM QUOTA TOTAL: " + string(steam_get_quota_total()) + " #" +
                "STEAM USER ACCOUNT ID: " + string(steam_get_user_account_id()) + " #" +
                "STEAM USER ID: " + string(steam_get_user_steam_id()) + " #" +
                "STEAM CLOUD ENABLED FOR ACCOUNT: " + string(boolean_name(steam_is_cloud_enabled_for_account())) + " #" +
                "STEAM CLOUD ENABLED FOR APP: " + string(boolean_name(steam_is_cloud_enabled_for_app())) + " #" +
                "STEAM OVERLAY ACTIVATED: " + string(boolean_name(steam_is_overlay_activated())) + " #" +
                "STEAM OVERLAY ENABLED: " + string(boolean_name(steam_is_overlay_enabled())) + " #" +
                "STEAM SCREENSHOT REQUESTED: " + string(boolean_name(steam_is_screenshot_requested())) + " #" +
                "STEAM USER LOGGED ON: " + string(boolean_name(steam_is_user_logged_on())) + " #" +
                "STEAM STATS READY: " + string(boolean_name(steam_stats_ready())) + " #" +
                "STEAM ITEMS SUBSCRIBED: " + string(steam_ugc_num_subscribed_items()) + " #"
            }
        /*
        global.debug_text = global.debug_text +
        "#" +
        "UWP PRIVILEGE: " + string(uwp_check_privilege(true, true, true)) + " #" +
        "UWP CONSTRAINED: " + string(uwp_is_constrained()) + " #" +
        "UWP SUSPENDING: " + string(uwp_is_suspending()) + " #" +
        "UWP LICENSE TRIAL TIME: " + string(uwp_license_trial_time_remainin (g()) + " #" +
        "UWP LICENSE TRIAL USER: " + string(uwp_license_trial_user()) + " #" +
        "UWP HELP: " + string(uwp_show_help(true)) + " #" +
        //"UWP CLOSED BY USER: " + string(uwp_was_closed_by_user()) +
        "UWP TERMINATED: " + string(uwp_was_terminated()) + " #" +
        "#" +
        "WINDOWS 8 TOUCHSCREEN AVAILABLE: " + string(boolean_name(win8_device_touchscreen_available())) + " #" +
        "WINDOWS 8 LICENSE TRIAL VERSION: " + string(win8_license_trial_version()) + " #" +
        "WINDOWS PHONE LICENSE TRIAL VERSION: " + string(winphone_license_trial_version()) + " #" +
        "#" +
        "XBOX LIVE ACTIVATING USER: " + string(boolean_name(xboxlive_get_activating_user())) + " #" +
        "XBOX LIVE FILE ERROR: " + string(xboxlive_get_file_error()) + " #" +
        "XBOX LIVE SAVEDATA USER: " + string(xboxlive_get_savedata_user()) + " #" +
        "XBOX LIVE USER STATS: " + string(xboxlive_get_stats_for_user()) + " #" +
        "XBOX LIVE USER: " + string(xboxlive_get_user(true)) + " #" +
        "XBOX LIVE USER COUNT: " + string(xboxlive_get_user_count()) + " #" +
        "XBOX LIVE USER ACTIVE: " + string(boolean_name(xboxlive_user_is_active(true))) + " #" +
        "XBOX LIVE USER GUEST: " + string(boolean_name(xboxlive_user_is_guest(true))) + " #" +
        "XBOX LIVE USER REMOTE: " + string(boolean_name(xboxlive_user_is_remote(true))) + " #" +
        "XBOX LIVE USER SIGNED IN: " + string(boolean_name(xboxlive_user_is_signed_in(true))) + " #"
        */
    }

// VARIABLES TRACKER
else if global.debug_tab == 5
    {
    if global.debug_text == ""
        {
        global.debug_text = 
            "NO VARIABLES TRACKED" + " #"
        }
    global.debug_text = global.debug_text +
        "#" +
        "SCORE: " + string(score) + " #" +
        "HEALTH: " + string(health) + " #" +
        "LIVES: " + string(lives) + " #" +
        "#" +
        "LOCAL HIGHSCORES : #"
    i = 1
    while i < 11
        {
        global.debug_text = global.debug_text +
            string(i) + ": " + string(highscore_name(i)) + " = " + string(highscore_value(i)) + " #"
        i = i + 1
        }
    }

// OBJECTS TRACKER
else if global.debug_tab == 6 && global.debug_text == ""
    {
    global.debug_text = "NO OBJECTS TRACKED"
    }

// DS TRACKER
else if global.debug_tab == 7 && global.debug_text == ""
    {
    global.debug_text = "NO DATA-STRUCTURES TRACKED"
    }

// GRAPHIC
else if global.debug_tab == 8
    {
    global.debug_text = 
        " AQUA # BLACK # BLUE # DKGRAY # FUCHSIA # GRAY # GREEN # LIME # LTGRAY # MAROON # NAVY # OLIVE # ORANGE # PURPLE # RED # SILVER # TEAL # WHITE # YELLOW #" +
        "#" +
        "CURSOR SPRITE: " + string(sprite_name(cursor_sprite)) + " #" +
        "POINTER INVALID: " + string(pointer_invalid) + " #" + // COLOR
        "POINTER NULL: " + string(pointer_null) + " #" + // COLOR
        "#" +
        "SHADERS SUPPORTED: " + string(boolean_name(shaders_are_supported())) + " #" +
        "#" +
        "TILES COUNT: " + string(tile_get_count()) + " #" +
        "TILES ID: " + string(tile_get_ids()) + " #" +
        "#" +
        "SKELETON ANIMATION: " + string(skeleton_animation_get()) + " #" +
        "SKELETON SKIN: " + string(skeleton_skin_get()) + " #" +
        "#" +
        "VERTEX COLOR: " + string(vertex_type_colour) + " #" +
        "VERTEX FLOAT1: " + string(vertex_type_float1) + " #" +
        "VERTEX FLOAT2: " + string(vertex_type_float2) + " #" +
        "#" +
        "LISTENER MASK: " + string(audio_get_listener_mask()) + " #" +
        "AUDIO LISTENERS: " + string(audio_get_listener_count()) + " #" 
    if audio_get_listener_count() != 0
        {
        i = 0
        while i < audio_get_listener_count()
            {
            global.debug_text = global.debug_text +
                string(i) + " : " + string(audio_get_listener_info(i)) + " : " + string(audio_get_master_gain(i)) + "#"
            i = i + 1
            }
        }
    global.debug_text = global.debug_text + "#" +
        "AUDIO RECORDERS: " + string(audio_get_recorder_count()) + " #" 
    if audio_get_recorder_count() != 0
        {
        i = 0
        while i < audio_get_recorder_count()
            {
            global.debug_text = global.debug_text +
                string(i) + " : " + string(audio_get_recorder_info(i)) + "#"
            i = i + 1
            }
        }
    // PARTICLES STUFF
    // FONT STUFF
    // TEXTURE STUFF
    }

// OVERRIDE
else if global.debug_tab == 9
    {
    global.debug_text =
        "OVERRIDE : #" +
        string(global.override_input) + " #" +
        "#"
    if global.override_target == 0
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "0: " + string(global.override_name0) + " #" +
        string(global.override_value0) + " #"
    if global.override_target == 0 or global.override_target == 1
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "1: " + string(global.override_name1) + " #" +
        string(global.override_value1) + " #"
    if global.override_target == 1 or global.override_target == 2
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "2: " + string(global.override_name2) + " #" +
        string(global.override_value2) + " #"
    if global.override_target == 2 or global.override_target == 3
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "3: " + string(global.override_name3) + " #" +
        string(global.override_value3) + " #"
    if global.override_target == 3 or global.override_target == 4
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "4: " + string(global.override_name4) + " #" +
        string(global.override_value4) + " #"
    if global.override_target == 4 or global.override_target == 5
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "5: " + string(global.override_name5) + " #" +
        string(global.override_value5) + " #"
    if global.override_target == 5 or global.override_target == 6
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "6: " + string(global.override_name6) + " #" +
        string(global.override_value6) + " #"
    if global.override_target == 6 or global.override_target == 7
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "7: " + string(global.override_name7) + " #" +
        string(global.override_value7) + " #"
    if global.override_target == 7 or global.override_target == 8
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "8: " + string(global.override_name8) + " #" +
        string(global.override_value8) + " #"
    if global.override_target == 8 or global.override_target == 9
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }
    else
        {
        global.debug_text = global.debug_text + " #"
        }
    global.debug_text = global.debug_text +
        "9: " + string(global.override_name9) + " #" +
        string(global.override_value9) + " #"
    if global.override_target == 9
        {
        global.debug_text = global.debug_text +
        "/////////////////////////////////////// #"
        }

    if keyboard_check_pressed(vk_backspace)
        {
        global.override_input = string_delete(global.override_input, string_length(global.override_input), 1)
        }
    if keyboard_check_pressed(vk_delete)
        {
        global.override_input = ""
        }
    if keyboard_check_pressed(vk_decimal) and string_count(".", global.override_input) == 0
        {
        global.override_input = string_insert(".", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_subtract) and string_count("-", global.override_input) == 0
        {
        global.override_input = string_insert("-", global.override_input, 0)
        }
    if keyboard_check_pressed(vk_add) and string_count("-", global.override_input) == 1
        {
        global.override_input = string_delete(global.override_input, 1, 1)
        }
    if keyboard_check_pressed(vk_numpad0)
        {
        global.override_input = string_insert("0", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad1)
        {
        global.override_input = string_insert("1", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad2)
        {
        global.override_input = string_insert("2", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad3)
        {
        global.override_input = string_insert("3", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad4)
        {
        global.override_input = string_insert("4", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad5)
        {
        global.override_input = string_insert("5", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad6)
        {
        global.override_input = string_insert("6", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad7)
        {
        global.override_input = string_insert("7", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad8)
        {
        global.override_input = string_insert("8", global.override_input, string_length(global.override_input)+1)
        }
    if keyboard_check_pressed(vk_numpad9)
        {
        global.override_input = string_insert("9", global.override_input, string_length(global.override_input)+1)
        }

    if keyboard_check_pressed(vk_enter) and global.override_input != ""
        {
        if global.override_target == 0
            {
            global.override_value0 = real(global.override_input)
            }
        else if global.override_target == 1
            {
            global.override_value1 = real(global.override_input)
            }
        else if global.override_target == 2
            {
            global.override_value2 = real(global.override_input)
            }
        else if global.override_target == 3
            {
            global.override_value3 = real(global.override_input)
            }
        else if global.override_target == 4
            {
            global.override_value4 = real(global.override_input)
            }
        else if global.override_target == 5
            {
            global.override_value5 = real(global.override_input)
            }
        else if global.override_target == 6
            {
            global.override_value6 = real(global.override_input)
            }
        else if global.override_target == 7
            {
            global.override_value7 = real(global.override_input)
            }
        else if global.override_target == 8
            {
            global.override_value8 = real(global.override_input)
            }
        else if global.override_target == 9
            {
            global.override_value9 = real(global.override_input)
            }
        global.override_input = ""
        }
    }

// CONTROLS
if keyboard_check_direct(vk_control) == true
    {
    if keyboard_check_released(ord("S")) == true
        {
        slow_motion = !slow_motion
        if slow_motion == true
            {
            old_room_speed = room_speed
            }
        else
            {
            room_speed = old_room_speed
            }
        }
    if keyboard_check_released(ord("F")) == true
        {
        window_set_fullscreen(!window_get_fullscreen())
        }
    if keyboard_check_direct(ord("R")) == true
        {
        restart_timer = restart_timer + 1
        }
    if keyboard_check_released(ord("R")) == true
        {
        if restart_timer < room_speed
            {
            room_restart()
            }
        else
            {
            game_restart()
            }
        }
    if keyboard_check_pressed(ord("0")) == true
        {
        global.debug_tab = 0
        }
    else if keyboard_check_pressed(ord("1")) == true
        {
        global.debug_tab = 1
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("2")) == true
        {
        global.debug_tab = 2
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("3")) == true
        {
        global.debug_tab = 3
        debug_y = 10
        keyboard_string = ""
        }
    else if keyboard_check_pressed(ord("4")) == true
        {
        global.debug_tab = 4
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("5")) == true
        {
        global.debug_tab = 5
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("6")) == true
        {
        global.debug_tab = 6
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("7")) == true
        {
        global.debug_tab = 7
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("8")) == true
        {
        global.debug_tab = 8
        debug_y = 10
        }
    else if keyboard_check_pressed(ord("9")) == true
        {
        global.debug_tab = 9
        debug_y = 10
        global.override_input = ""
        }
    if global.debug_tab != 0
        {
        if keyboard_check_direct(vk_up) && debug_y < 10
            {
            debug_y = debug_y + 20
            }
        else if keyboard_check_direct(vk_down) && debug_y > window_get_height() - string_height(string_hash_to_newline(global.debug_text)) - 10
            {
            debug_y = debug_y - 20
            }
        }
    if global.debug_tab == 2
        {
        if keyboard_check_pressed(vk_left) && global.view_tracked > 0
            {
            global.view_tracked = global.view_tracked - 1
            global.background_tracked = global.background_tracked - 1
            debug_y = 10
            }
        else if keyboard_check_pressed(vk_right) && global.view_tracked < 7
            {
            global.view_tracked = global.view_tracked + 1
            global.background_tracked = global.background_tracked + 1
            debug_y = 10
            }
        }
    else if global.debug_tab == 6
        {
        if keyboard_check_pressed(vk_left) && global.object_tracked > 0
            {
            global.object_tracked = global.object_tracked - 1
            debug_y = 10
            }
        else if keyboard_check_pressed(vk_right) && global.object_tracked < global.object_track_id - 1
            {
            global.object_tracked = global.object_tracked + 1
            debug_y = 10
            }
        }
    else if global.debug_tab == 7
        {
        if keyboard_check_pressed(vk_left) && global.ds_tracked > 0
            {
            global.ds_tracked = global.ds_tracked - 1
            debug_y = 10
            }
        else if keyboard_check_pressed(vk_right) && global.ds_tracked < global.ds_track_id - 1
            {
            global.ds_tracked = global.ds_tracked + 1
            debug_y = 10
            }
        }
    else if global.debug_tab == 9
        {
        if keyboard_check_pressed(vk_left) && global.override_target > 0
            {
            global.override_target = global.override_target - 1
            debug_y = 10
            }
        else if keyboard_check_pressed(vk_right) && global.override_target < 9
            {
            global.override_target = global.override_target + 1
            debug_y = 10
            }
        }
    }

if slow_motion == true
    {
    room_speed = old_room_speed / 3
    }
