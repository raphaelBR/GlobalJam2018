/// @description  track_var(variable mark, variable link *PLACE IN AN OBJECT'S STEP EVENT*)
/// @function  track_var
/// @param variable mark
/// @param  variable link *PLACE IN AN OBJECT'S STEP EVENT*

name = argument[0]
ref = argument[1]

if global.debug_tab == 5
    {
    global.debug_text = global.debug_text +
        string(name) + " (" + string(data_get_type(ref)) + ") : " + string(ref) + " #"
    }
