/// @description  override(index[0-9], name, default value)
/// @function  override
/// @param index[0-9]
/// @param  name
/// @param  default value

override_index = argument[0]
override_name = argument[1]
override_default = argument[2]

if override_index == 0
    {
    global.override_name0 = override_name
    if global.override_value0 == ""
        {
        global.override_value0 = override_default
        }
    return global.override_value0
    }
else if override_index == 1
    {
    global.override_name1 = override_name
    if global.override_value1 == ""
        {
        global.override_value1 = override_default
        }
    return global.override_value1
    }
else if override_index == 2
    {
    global.override_name2 = override_name
    if global.override_value2 == ""
        {
        global.override_value2 = override_default
        }
    return global.override_value2
    }
else if override_index == 3
    {
    global.override_name3 = override_name
    if global.override_value3 == ""
        {
        global.override_value3 = override_default
        }
    return global.override_value3
    }
else if override_index == 4
    {
    global.override_name4 = override_name
    if global.override_value4 == ""
        {
        global.override_value4 = override_default
        }
    return global.override_value4
    }
else if override_index == 5
    {
    global.override_name5 = override_name
    if global.override_value5 == ""
        {
        global.override_value5 = override_default
        }
    return global.override_value5
    }
else if override_index == 6
    {
    global.override_name6 = override_name
    if global.override_value6 == ""
        {
        global.override_value = override_default
        }
    return global.override_value6
    }
else if override_index == 7
    {
    global.override_name7 = override_name
    if global.override_value7 == ""
        {
        global.override_value = override_default
        }
    return global.override_value7
    }
else if override_index == 8
    {
    global.override_name8 = override_name
    if global.override_value8 == ""
        {
        global.override_value = override_default
        }
    return global.override_value8
    }
else
    {
    global.override_name9 = override_name
    if global.override_value9 == ""
        {
        global.override_value = override_default
        }
    return global.override_value9
    }
