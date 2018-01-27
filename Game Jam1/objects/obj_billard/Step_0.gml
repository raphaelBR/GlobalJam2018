if (speed > 0) {
	speed = clamp(speed - speedLoss / room_speed, 0, speedMax)
	if (speed > speedCap) {
		image_blend = c_orange
	} else {
		image_blend = c_white	
	}
}