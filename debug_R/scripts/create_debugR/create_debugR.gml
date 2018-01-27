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
