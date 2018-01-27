direction = point_direction(other.x, other.y, x, y)
speed = clamp(speed + speedGain * room_speed, 0, speedMax)
image_angle = direction