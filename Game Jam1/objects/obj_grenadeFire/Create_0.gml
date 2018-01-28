exploding = true
explosion_delay = 1.5
prevention_delay = 0.5
speedLoss = 7
speedMax = 15

//son
audio_play_sound(snd_shoot_grenade,10,false);

direction = obj_playerHead.direction
speed = speedMax
alarm_set(0, explosion_delay * room_speed)
alarm_set(1, (explosion_delay - prevention_delay) * room_speed)