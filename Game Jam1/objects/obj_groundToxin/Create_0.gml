spreadDelay = 30
spreadDelayRandom = 10
tilingX = 62
tilingY = 125

x = round(x / tilingX) * tilingX
y = round(y / tilingY) * tilingY

alarm_set(0, (spreadDelay + random_range(0, spreadDelayRandom)) * room_speed)

image_blend = c_lime;