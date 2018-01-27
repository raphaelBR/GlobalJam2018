/// @description  create_debugR(*PLACE IN THE ENGINE’S [CREATE] EVENT*)
/// @function  create_debugR
/// @param *PLACE IN THE ENGINE’S [CREATE] EVENT*

// CONTROLS
restart_timer = 0
pause = false
slow_motion = false
old_room_speed = 0
debug_y = 10
persistent = true

// DISPLAY
global.debug_tab = 0
global.debug_draw_color = c_black
global.debug_text = ""
pause_screen = noone

// DS TRACK
global.ds_track_id = 0
global.ds_tracked = 0
global.debug_ds = 0

// ROOM TRACK
global.view_tracked = 0
global.background_tracked = 0

// OBJECT TRACK
global.object_tracked = 0
global.object_track_id = 0
global.object_target = -1

// OVERRIDE
global.override_input = ""
global.override_target = 0
global.override_value0 = ""
global.override_value1 = ""
global.override_value2 = ""
global.override_value3 = ""
global.override_value4 = ""
global.override_value5 = ""
global.override_value6 = ""
global.override_value7 = ""
global.override_value8 = ""
global.override_value9 = ""
global.override_name0 = "[NO NAME]"
global.override_name1 = "[NO NAME]"
global.override_name2 = "[NO NAME]"
global.override_name3 = "[NO NAME]"
global.override_name4 = "[NO NAME]"
global.override_name5 = "[NO NAME]"
global.override_name6 = "[NO NAME]"
global.override_name7 = "[NO NAME]"
global.override_name8 = "[NO NAME]"
global.override_name9 = "[NO NAME]"
