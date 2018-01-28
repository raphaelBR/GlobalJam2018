spawn_cd = 5
spawn_cd_random = 2
rotationSpeed = 500
speedRandomness = 400
path_start(path0, rotationSpeed + random_range(-speedRandomness, speedRandomness), path_action_restart, true)

alarm_set(0, (spawn_cd + random_range(0, spawn_cd_random)) * room_speed);