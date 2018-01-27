/// @description  endaction_name(endaction)
/// @function  endaction_name
/// @param endaction

endaction = argument[0]

if endaction == path_action_stop
    {
    return "STOP"
    }
else if endaction == path_action_restart
    {
    return "RESTART"
    }
else if endaction == path_action_continue
    {
    return "CONTINUE"
    }
else if endaction == path_action_reverse
    {
    return "REVERSE"
    }
else
    {
    return "UNKNOWN"
    }
