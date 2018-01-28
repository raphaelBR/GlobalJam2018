spreadDelay = 3
spreadDelayRandom = 1
tilingX = 62
tilingY = 125
scoring = 100

x = round(x / tilingX) * tilingX
y = round(y / tilingY) * tilingY

alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)