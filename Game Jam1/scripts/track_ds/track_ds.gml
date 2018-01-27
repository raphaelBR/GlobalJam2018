/// @description  track_ds(datastructure mark, datastructure index, datastructure type *PLACE IN AN OBJECT'S STEP EVENT*)
/// @function  track_ds
/// @param datastructure mark
/// @param  datastructure index
/// @param  datastructure type *PLACE IN AN OBJECT'S STEP EVENT*

name = argument[0]
ref = argument[1]
type = argument[2]

if global.debug_tab == 7
    {
    if global.ds_track_id == global.ds_tracked
        {
        global.debug_text =
            "NAME: " + string(name) + " #" +
            "INDEX: " + string(ref) + " #" +
            "TYPE: " + string(ds_type_name(type)) + " #" +
            "#"
        if ds_exists(ref, type) == true
            {

            // LIST
            if type == ds_type_list
                {
                i = 0
                while i < ds_list_size(ref)
                    {
                    if ds_list_empty(ref) == true
                        {
                        global.debug_text = global.debug_text +
                            "LIST EMPTY"
                        }
                    else
                        {
                        global.debug_text = global.debug_text +
                            string(i) + ": " + string(ds_list_find_value(ref, i)) + " #"
                        i = i + 1
                        }
                    }
                }

            // MAP
            else if type == ds_type_map
                {
                global.debug_ds = ds_map_create()
                ds_map_copy(global.debug_ds, ref)
                if ds_map_empty(global.debug_ds) == true
                    {
                    global.debug_text = global.debug_text +
                        "MAP EMPTY"
                    }
                else
                    {
                    while ds_map_empty(global.debug_ds) == false
                        {
                        global.debug_text = global.debug_text +
                            string(ds_map_find_first(global.debug_ds)) + ": " + string(ds_map_find_value(global.debug_ds, ds_map_find_first(global.debug_ds))) + " #"
                        ds_map_delete(global.debug_ds, ds_map_find_first(global.debug_ds))
                        }
                    }
                ds_map_destroy(global.debug_ds)
                }

            // STACK
            else if type == ds_type_stack
                {
                global.debug_ds = ds_stack_create()
                ds_stack_copy(global.debug_ds, ref)
                if ds_stack_empty(global.debug_ds) == true
                    {
                    global.debug_text = global.debug_text +
                        "STACK EMPTY"
                    }
                else
                    {
                    i = 1
                    while ds_stack_empty(global.debug_ds) == false
                        {
                        global.debug_text = global.debug_text +
                            string(i) + ": " + string(ds_stack_pop(global.debug_ds)) + " #"
                        i = i + 1
                        }
                    }
                ds_stack_destroy(global.debug_ds)
                }
                
            // GRID
            else if type == ds_type_grid
                {
                j = 0
                while j < ds_grid_height(ref)
                    {
                    i = 0
                    while i < ds_grid_width(ref)
                        {
                        global.debug_text = global.debug_text +
                            string(ds_grid_get(ref, i, j)) + " ; "
                        i = i + 1
                        }
                    global.debug_text = global.debug_text + " #"
                    j = j + 1
                    }
                }
            
            // QUEUE
            else if type = ds_type_queue
                {
                global.debug_ds = ds_queue_create()
                ds_queue_copy(global.debug_ds, ref)
                if ds_queue_empty(global.debug_ds) == true
                    {
                    global.debug_text = global.debug_text +
                        "QUEUE EMPTY"
                    }
                else
                    {
                    i = 1
                    while ds_queue_empty(global.debug_ds) == false
                        {
                        global.debug_text = global.debug_text +
                            string(i) + ": " + string(ds_queue_dequeue(global.debug_ds)) + " #"
                        i = i + 1
                        }
                    }
                ds_queue_destroy(global.debug_ds)
                }
            
            // PRIORITY
            else if type = ds_type_priority
                {
                global.debug_ds = ds_priority_create()
                ds_priority_copy(global.debug_ds, ref)
                if ds_priority_empty(global.debug_ds) == true
                    {
                    global.debug_text = global.debug_text +
                        "PRIORITY QUEUE EMPTY"
                    }
                else
                    {
                    while ds_priority_empty(global.debug_ds) == false
                        {
                        global.debug_text = global.debug_text + 
                            string(ds_priority_find_priority(global.debug_ds, ds_priority_find_max(global.debug_ds))) + ": " + string(ds_priority_delete_max(global.debug_ds)) + " #"
                        }
                    }
                ds_priority_destroy(global.debug_ds)
                }
            }

        // ERROR
        else
            {
            global.debug_text = global.debug_text +
                "UNABLE TO FIND THE DATABASE #" +
                "PLEASE CHECK THE TRACKING PARAMETERS"
            }
        }
    global.ds_track_id = global.ds_track_id + 1
    }
