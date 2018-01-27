/// @description  time_value(number of steps)
/// @function  time_value
/// @param number of steps

t = argument[0]
h = 0
m = 0
s = 0
if t > 0
    {
    h = floor(t / 60 / 60 / room_speed)
    t = t - (h * 60 * 60 * room_speed)
    m = floor(t / 60 / room_speed)
    t = t - (m * 60 * room_speed)
    s = floor(t / room_speed)
    t = t - (s * room_speed)
    }
else
    {
    t = 0
    }
    
return string(h) + ":" + string(m) + ":" + string(s) + ":" + string(t) 
