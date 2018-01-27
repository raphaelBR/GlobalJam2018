/// @description  data_get_type(data)
/// @function  data_get_type
/// @param data

data = argument[0]

if is_string(data)
    {
    return "STRING"
    }
else if is_real(data)
    {
    return "REAL"
    }
else if is_array(data)
    {
    return "ARRAY"
    }
else if is_ptr(data)
    {
    return "POINTER"
    }
else if is_int32(data)
    {
    return "INTEGER (32)"
    }
else if is_int64(data)
    {
    return "INTEGER (64)"
    }
else if is_matrix(data)
    {
    return "MATRIX"
    }
else if is_undefined(data)
    {
    return "UNDEFINED"
    }
else
    {
    return "ERROR"
    }
