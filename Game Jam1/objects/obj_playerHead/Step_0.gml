x = obj_player.x
y = obj_player.y

direction = point_direction(x, y, mouse_x, mouse_y);

if (direction > 45 && direction < 135) {
	sprite_index = spr_player_droit_haut
}/* else if (direction > 60 && direction < 120) {
	sprite_index = spr_player_haut
}*/ else if (direction > 315 || direction < 45 || (direction > 135 && direction < 225)) {
	sprite_index = spr_player_droit_mid
} else if (direction > 225 || direction < 315) {
	sprite_index = spr_player_droit_bas
}

if (direction > 90 && direction < 270) {
	image_xscale = -1
} else {
	image_xscale = 1
}

//game over
visible = obj_player.visible;