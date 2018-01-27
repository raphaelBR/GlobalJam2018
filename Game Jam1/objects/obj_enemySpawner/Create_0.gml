spawn_cd = 3;
spawn_cd_random = 2

alarm_set(0, (spawn_cd + random_range(0, spawn_cd_random)) * room_speed);