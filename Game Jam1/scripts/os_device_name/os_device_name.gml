/// @description  device_name(os_device)
/// @function  device_name
/// @param os_device

var device = argument[0]

if device == device_ios_ipad
    {
    return "iPAD"
    }
if device == device_ios_ipad_retina
    {
    return "iPAD RETINA"
    }
if device == device_ios_iphone6
    {
    return "iPHONE 6"
    }
if device == device_ios_iphone6plus
    {
    return "iPHONE 6 PLUS"
    }
if device == device_ios_iphone5
    {
    return "iPHONE 5"
    }
if device == device_ios_iphone
    {
    return "iPHONE / ANDROID"
    }
if device == device_ios_iphone_retina
    {
    return "iPHONE RETINA"
    }
if device == device_emulator
    {
    return "EMULATOR"
    }
if device == device_tablet
    {
    return "ANDROID TABLET"
    }
if device == device_ios_unknown
    {
    return "UNKNOWN (PC?)"
    }
