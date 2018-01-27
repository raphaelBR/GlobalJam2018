/// @description  track_obj(*PLACE IN THE OBJECT'S STEP EVENT*)
/// @function  track_obj
/// @param *PLACE IN THE OBJECT'S STEP EVENT*

if global.debug_tab == 6
    {
    if global.object_track_id == global.object_tracked
        {
        global.object_target = id
        global.debug_text =
            // PLS ADD THE COMPLEX PHYSICS SHIT
            "ID: " + string(id) + " #" +
            "NAME: " + string(object_get_name(object_index)) + " #" +
            "OBJECT INDEX: " + string(object_index) + " #" +
            "INSTANCE: " + string(instance_id_get( 0 )) + " #" +
            "VISIBLE: " + string(boolean_name(visible)) + " #" +
            "SOLID: " + string(boolean_name(solid)) + " #" +
            "PERSISTENT: " + string(boolean_name(persistent)) + " #" +
            "DEPTH: " + string(depth) + " #" +
            "PARENT: " + string(object_get_name(object_get_parent(object_index))) + " #" +
            "#" +
            "X: " + string(x) + " #" +
            "Y: " + string(y) + " #" +
            "X START: " + string(xstart) + " #" +
            "Y START: " + string(ystart) + " #" +
            "DIRECTION: " + string(direction) + " #" +
            "SPEED: " + string(speed) + " #" +
            "H SPEED: " + string(hspeed) + " #" +
            "V SPEED: " + string(vspeed) + " #" +
            "FRICTION: " + string(friction) + " #" +
            "GRAVITY: " + string(gravity) + " #" +
            "GRAVITY DIRECTION: " + string(gravity_direction) + " #" +
            "#" +
            "IMAGE ALPHA: " + string(image_alpha) + " #" +
            "IMAGE ANGLE: " + string(image_angle) + " #" +
            "IMAGE BLEND: " + string(image_blend) + " #" + //COLOR
            "IMAGE INDEX: " + string(image_index) + " #" +
            "IMAGE NUMBER: " + string(image_number) + " #" +
            "IMAGE SPEED: " + string(image_speed) + " #" +
            "IMAGE XSCALE: " + string(image_xscale) + " #" +
            "IMAGE YSCALE: " + string(image_yscale) + " #" +
            "#" +
            "ALARM [0]: " + string(time_value(alarm[0])) + " ; " + string(alarm[0]) + " #" +
            "ALARM [1]: " + string(time_value(alarm[1])) + " ; " + string(alarm[1]) + " #" +
            "ALARM [2]: " + string(time_value(alarm[2])) + " ; " + string(alarm[2]) + " #" +
            "ALARM [3]: " + string(time_value(alarm[3])) + " ; " + string(alarm[3]) + " #" +
            "ALARM [4]: " + string(time_value(alarm[4])) + " ; " + string(alarm[4]) + " #" +
            "ALARM [5]: " + string(time_value(alarm[5])) + " ; " + string(alarm[5]) + " #" +
            "ALARM [6]: " + string(time_value(alarm[6])) + " ; " + string(alarm[6]) + " #" +
            "ALARM [7]: " + string(time_value(alarm[7])) + " ; " + string(alarm[7]) + " #" +
            "ALARM [8]: " + string(time_value(alarm[8])) + " ; " + string(alarm[8]) + " #" +
            "ALARM [9]: " + string(time_value(alarm[9])) + " ; " + string(alarm[9]) + " #" +
            "ALARM [10]: " + string(time_value(alarm[10])) + " ; " + string(alarm[10]) + " #" +
            "ALARM [11]: " + string(time_value(alarm[11])) + " ; " + string(alarm[11])+ " #" +
            "#" +
            "SPRITE NAME: " + string(sprite_name(sprite_index)) + " #" +
            "SPRITE HEIGHT: " + string(sprite_height) + " #" +
            "SPRITE WIDTH: " + string(sprite_width) + " #" +
            "SPRITE XOFFSET: " + string(sprite_xoffset) + " #" +
            "SPRITE_YOFFSET: " + string(sprite_yoffset) + " #" +
            "#" +
            "PATH NAME: " + string(path_get_name(path_index)) + " #" +
            "PATH ENDACTION: " + string(endaction_name(path_endaction)) + " #" +
            "PATH ORIENTATION: " + string(path_orientation) + " #" +
            "PATH POSTION: " + string(path_position) + " #" +
            "PATH SCALE: " + string(path_scale) + " #" +
            "PATH SPEED: " + string(path_speed) + " #" +
            "PATH CLOSED: " + string(boolean_name(path_get_closed(path_index))) + " #" +
            "PATH SMOOTH: " + string(boolean_name(path_get_kind(path_index))) + " #" +
            "PATH LENGTH: " + string(path_get_length(path_index)) + " #" +
            "PATH POINTS: " + string(path_get_number(path_index)) + " #" +
            //"PATH POINT SPEED: " + string(path_get_point_speed(path_index, point)) + " #" +
            //"PATH POINT X: " + string(path_get_point_x(path_index, point)) + " #" +
            //"PATH POINT Y: " + string(path_get_point_y(path_index, point)) + " #" +
            "PATH PRECISION: " + string(path_get_precision(path_index)) + " #" +
            "#" +
            "TIMELINE INDEX: " + string(timeline_index) + " #" +
            "TIMELINE RUNNING: " + string(boolean_name(timeline_running)) + " #" +
            "TIMELINE LOOP: " + string(boolean_name(timeline_loop)) + " #" +
            "TIMELINE POSITION: " + string(timeline_position) + " #" +
            "TIMELINE SPEED: " + string(timeline_speed) + " #" +
            "#" +
            "MASK NAME: " + string(sprite_name(mask_index)) + " #" +
            "BBOX WIDTH: " + string(bbox_right - bbox_left) + " #" +
            "BBOX HEIGHT: " + string(bbox_bottom - bbox_top) + " #" +
            "BBOX LEFT: " + string(bbox_left) + " #" +
            "BBOX TOP: " + string(bbox_top) + " #" +
            "BBOX RIGHT: " + string(bbox_right) + " #" +
            "BBOX BOTTOM: " + string(bbox_bottom) + " #" +
            "#" /* +
            "PHYSIC ACTIVE: " + string(boolean_name(phy_active)) + " #" +
            "PHYSIC ANGULAR DAMPING: " + string(phy_angular_damping) + " #" +
            "PHYSIC ANGULAR VELOCITY: " + string(phy_angular_velocity) + " #" +
            "PHYSIC BULLET: " + string(phy_bullet) + " #" +
            "PHYSIC COLLISION NORMAL X: " + string(phy_col_normal_x) + " #" +
            "PHYSIC COLLISION NORMAL Y: " + string(phy_col_normal_y) + " #" +
            "PHYSIC COLLISION POINTS: " + string(phy_collision_points) + " #" +
            "PHYSIC COLLISION X: " + string(phy_collision_x) + " #" +
            "PHYSIC COLLISION Y: " + string(phy_collision_y) + " #" +
            "PHYSIC CENTER OF MASS X: " + string(phy_com_x) + " #" +
            "PHYSIC CENTER OF MASS Y: " + string(phy_com_y) + " #" +
            "PHYSIC DYNAMIC: " + string(phy_dynamic) + " #" +
            "PHYSIC FIXED ROTATION: " + string(phy_fixed_rotation) + " #" +
            "PHYSIC INERTIA: " + string(phy_inertia) + " #" +
            "PHYSIC KINEMATIC: " + string(phy_kinematic) + " #" +
            "PHYSIC LINEAR DAMPING: " + string(phy_linear_damping) + " #" +
            "PHYSIC LINEAR VELOCITY X: " + string(phy_linear_velocity_x) + " #" +
            "PHYSIC LINEAR VELOCITY Y: " + string(phy_linear_velocity_y) + " #" +
            "PHYSIC MASS: " + string(phy_mass) + " #" +
            "PHYSIC POSTITION X: " + string(phy_position_x) + " #" +
            "PHYSIC POSITION Y: " + string(phy_position_y) + " #" +
            "PHYSIC ROTATION: " + string(phy_rotation) + " #" +
            "PHYSIC SLEEPING: " + string(phy_sleeping) + " #" +
            "PHYSIC SPEED: " + string(phy_speed) + " #" +
            "PHYSIC SPEED X: " + string(phy_speed_x) + " #" +
            "PHYSIC SPEED Y: " + string(phy_speed_y)
            */
        }
    global.object_track_id = global.object_track_id + 1
    }
