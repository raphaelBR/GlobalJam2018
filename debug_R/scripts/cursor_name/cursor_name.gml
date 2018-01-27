/// @description  cursor_name(cursor index)
/// @function  cursor_name
/// @param cursor index

cur = argument[0]

if cur == cr_none
    {
    return "NONE"
    }
if cur == cr_appstart
    {
    return "APP START"
    }
if cur == cr_arrow
    {
    return "ARROW"
    }
if cur == cr_beam
    {
    return "TEXT SELECTER"
    }
if cur == cr_cross
    {
    return "CROSS"
    }
if cur == cr_default
    {
    return "DEFAULT"
    }
if cur == cr_drag
    {
    return "DRAG"
    }
if cur == cr_handpoint
    {
    return "HANDPOINT"
    }
if cur == cr_hourglass
    {
    return "LOADING"
    }
if cur == cr_size_all
    {
    return "RESIZE ALL +"
    }
if cur == cr_size_nwse
    {
    return "RESIZE DIAGONAL \\"
    }
if cur == cr_size_ns
    {
    return "RESIZE VERTICAL |"
    }
if cur == cr_size_nesw
    {
    return "RESIZE DIAGONAL /"
    }
if cur == cr_size_we
    {
    return "RESIZE HORIZONTAL -"
    }
if cur == cr_uparrow
    {
    return "UP ARROW"
    }
