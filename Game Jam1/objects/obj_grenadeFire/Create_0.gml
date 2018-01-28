exploding = true
explosion_delay = 2
prevention_delay = 0.5
speedLoss = 1
speedMax = 10

direction = obj_playerHead.direction
speed = speedMax
alarm_set(0, explosion_delay * room_speed)
alarm_set(1, (explosion_delay - prevention_delay) * room_speed)