/// @description  aa_name(aa value)
/// @function  aa_name
/// @param aa value

aa = argument[0]
text = ""

if aa > 0
    {
    i = 2
    while aa > 0
        {
        text = text + string(i) + " ; "
        aa = aa - i
        i = i * 2
        }
    return string(text)
    }
else
    {
    return "0"
    }
