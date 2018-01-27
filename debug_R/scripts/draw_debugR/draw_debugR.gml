/// @description  draw_debugR(*PLACE IN THE ENGINE’S [DRAW GUI END] EVENT*)
/// @function  draw_debugR
/// @param *PLACE IN THE ENGINE’S [DRAW GUI END] EVENT*

// DRAW PARAMETERS
draw_set_color(global.debug_draw_color)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(-1)

// PAUSE
if pause == true
    {
    draw_sprite(pause_screen, -1, 0, 0)
    exit
    }

// DEBUG OBJECT
if global.debug_tab == 6 && global.object_target != -1
    {
    with global.object_target
        {
        /*
        if phy_active == false
            {
            physics_world_draw_debug(phy_debug_render_aabb)
            physics_world_draw_debug(phy_debug_render_collision_pairs)
            physics_world_draw_debug(phy_debug_render_coms)
            physics_world_draw_debug(phy_debug_render_core_shapes)
            physics_world_draw_debug(phy_debug_render_joints)
            physics_world_draw_debug(phy_debug_render_obb)
            physics_world_draw_debug(phy_debug_render_shapes)
            physics_draw_debug()
            }
        */
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 3, false)
        draw_set_alpha(0.5)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 10, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 20, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 30, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 40, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 50, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 60, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 70, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 80, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 90, true)
        draw_set_alpha(1)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 100, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 200, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 300, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 400, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 500, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 600, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 700, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 800, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 900, true)
        draw_circle(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), 1000, true)
        draw_line(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), x + lengthdir_x(window_get_height() * window_get_width(), direction), y + lengthdir_y(window_get_height() * window_get_width(), direction))
        draw_arrow(x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), x + lengthdir_x(speed * 20, direction), y + lengthdir_y(speed * 20, direction), speed * 10)
        draw_set_alpha(0.33)
        draw_rectangle(bbox_right, bbox_top, bbox_left, bbox_bottom, false)
        draw_set_alpha(1)
        if path_index != -1
            {
            draw_path(path_index, x + path_get_x(path_index, 0) - path_get_x(path_index, path_position), y + path_get_y(path_index, 0) - path_get_y(path_index, path_position), false)
            }
        if sprite_index != -1
            {
            draw_sprite_ext(sprite_index, image_index, x - __view_get( e__VW.XView, 0 ), y - __view_get( e__VW.YView, 0 ), image_xscale, image_yscale, image_angle, global.debug_draw_color, 0.66)
            }
        }
    }

// VISUAL HELP
else if global.debug_tab == 8
    {
    draw_rectangle_colour(90, debug_y - 5, 270, debug_y + 285, c_white, c_black, c_black, c_white, false)
    draw_line_width_colour(90, debug_y + 5, 270, debug_y + 5, 5, c_aqua, c_aqua)
    draw_circle_colour(285, debug_y + 5, 7, c_aqua, c_black, false)
    draw_circle_colour(310, debug_y + 5, 7, c_aqua, c_white, false)
    draw_line_width_colour(90, debug_y + 20, 270, debug_y + 20, 5, c_black, c_black)
    draw_circle_colour(285, debug_y + 20, 7, c_black, c_black, false)
    draw_circle_colour(310, debug_y + 20, 7, c_black, c_white, false)
    draw_line_width_colour(90, debug_y + 35, 270, debug_y + 35, 5, c_blue, c_blue)
    draw_circle_colour(285, debug_y + 35, 7, c_blue, c_black, false)
    draw_circle_colour(310, debug_y + 35, 7, c_blue, c_white, false)
    draw_line_width_colour(90, debug_y + 50, 270, debug_y + 50, 5, c_dkgray, c_dkgray)
    draw_circle_colour(285, debug_y + 50, 7, c_dkgray, c_black, false)
    draw_circle_colour(310, debug_y + 50, 7, c_dkgray, c_white, false)
    draw_line_width_colour(90, debug_y + 65, 270, debug_y + 65, 5, c_fuchsia, c_fuchsia)
    draw_circle_colour(285, debug_y + 65, 7, c_fuchsia, c_black, false)
    draw_circle_colour(310, debug_y + 65, 7, c_fuchsia, c_white, false)
    draw_line_width_colour(90, debug_y + 80, 270, debug_y + 80, 5, c_gray, c_gray)
    draw_circle_colour(285, debug_y + 80, 7, c_gray, c_black, false)
    draw_circle_colour(310, debug_y + 80, 7, c_gray, c_white, false)
    draw_line_width_colour(90, debug_y + 95, 270, debug_y + 95, 5, c_green, c_green)
    draw_circle_colour(285, debug_y + 95, 7, c_green, c_black, false)
    draw_circle_colour(310, debug_y + 95, 7, c_green, c_white, false)
    draw_line_width_colour(90, debug_y + 110, 270, debug_y + 110, 5, c_lime, c_lime)
    draw_circle_colour(285, debug_y + 110, 7, c_lime, c_black, false)
    draw_circle_colour(310, debug_y + 110, 7, c_lime, c_white, false)
    draw_line_width_colour(90, debug_y + 125, 270, debug_y + 125, 5, c_ltgray, c_ltgray)
    draw_circle_colour(285, debug_y + 125, 7, c_ltgray, c_black, false)
    draw_circle_colour(310, debug_y + 125, 7, c_ltgray, c_white, false)
    draw_line_width_colour(90, debug_y + 140, 270, debug_y + 140, 5, c_maroon, c_maroon)
    draw_circle_colour(285, debug_y + 140, 7, c_maroon, c_black, false)
    draw_circle_colour(310, debug_y + 140, 7, c_maroon, c_white, false)
    draw_line_width_colour(90, debug_y + 155, 270, debug_y + 155, 5, c_navy, c_navy)
    draw_circle_colour(285, debug_y + 155, 7, c_navy, c_black, false)
    draw_circle_colour(310, debug_y + 155, 7, c_navy, c_white, false)
    draw_line_width_colour(90, debug_y + 170, 270, debug_y + 170, 5, c_olive, c_olive)
    draw_circle_colour(285, debug_y + 170, 7, c_olive, c_black, false)
    draw_circle_colour(310, debug_y + 170, 7, c_olive, c_white, false)
    draw_line_width_colour(90, debug_y + 185, 270, debug_y + 185, 5, c_orange, c_orange)
    draw_circle_colour(285, debug_y + 185, 7, c_orange, c_black, false)
    draw_circle_colour(310, debug_y + 185, 7, c_orange, c_white, false)
    draw_line_width_colour(90, debug_y + 200, 270, debug_y + 200, 5, c_purple, c_purple)
    draw_circle_colour(285, debug_y + 200, 7, c_purple, c_black, false)
    draw_circle_colour(310, debug_y + 200, 7, c_purple, c_white, false)
    draw_line_width_colour(90, debug_y + 215, 270, debug_y + 215, 5, c_red, c_red)
    draw_circle_colour(285, debug_y + 215, 7, c_red, c_black, false)
    draw_circle_colour(310, debug_y + 215, 7, c_red, c_white, false)
    draw_line_width_colour(90, debug_y + 230, 270, debug_y + 230, 5, c_silver, c_silver)
    draw_circle_colour(285, debug_y + 230, 7, c_silver, c_black, false)
    draw_circle_colour(310, debug_y + 230, 7, c_silver, c_white, false)
    draw_line_width_colour(90, debug_y + 245, 270, debug_y + 245, 5, c_teal, c_teal)
    draw_circle_colour(285, debug_y + 245, 7, c_teal, c_black, false)
    draw_circle_colour(310, debug_y + 245, 7, c_teal, c_white, false)
    draw_line_width_colour(90, debug_y + 260, 270, debug_y + 260, 5, c_white, c_white)
    draw_circle_colour(285, debug_y + 260, 7, c_white, c_black, false)
    draw_circle_colour(310, debug_y + 260, 7, c_white, c_white, false)
    draw_line_width_colour(90, debug_y + 275, 270, debug_y + 275, 5, c_yellow, c_yellow)
    draw_circle_colour(285, debug_y + 275, 7, c_yellow, c_black, false)
    draw_circle_colour(310, debug_y + 275, 7, c_yellow, c_white, false)
    }

// DEBUG TEXT
if global.debug_tab > 0
    {
    draw_text(10, debug_y,
        string_hash_to_newline(string(global.debug_text))
        )
    draw_set_halign(fa_right)
    draw_set_valign(fa_bottom)
    draw_text(window_get_width() - 10 , window_get_height() - 10,
        string_hash_to_newline(@"
        DEBUG TABS
        GAME : 1
        ROOM : 2
        INPUTS : 3
        NETWORK : 4
        VARIABLES : 5
        OBJECTS : 6
        DATA-STRUCTURES : 7
        GRAPHICS : 8
        AUDIO : 9
        CLOSE : 0
        "))
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    }
    
// REFRESH SETTINGS
draw_set_color(c_black)
global.debug_text = ""
global.ds_track_id = 0
global.object_track_id = 0
global.object_target = -1
