/// @description  ds_type_name(datastructure index)
/// @function  ds_type_name
/// @param datastructure index

type = argument[0]

if type == ds_type_list
    {
    return "LIST"
    }
if type == ds_type_map
    {
    return "MAP"
    }
if type == ds_type_stack
    {
    return "STACK"
    }
if type == ds_type_grid
    {
    return "GRID"
    }
if type == ds_type_queue
    {
    return "QUEUE"
    }
if type == ds_type_priority
    {
    return "PRIORITY QUEUE"
    }

return "UNKNOWN"
