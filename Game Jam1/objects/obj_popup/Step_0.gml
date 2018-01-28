///@description BLINK

if wait {
	wait_timer++;
}

if wait_timer > 90 {
	wait = false;
	blink_timer++;
}

if blink_timer > 30 && blink_timer < 60 {
	visible = true;
}

if blink_timer > 60 {
	visible = false;
	blink_timer = 0;
}