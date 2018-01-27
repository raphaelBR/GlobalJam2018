if (speed > 0) {
	speed = clamp(speed - (speedLoss / room_speed), 0, speedMax)
}
image_angle = direction
