x = obj_player.x
y = obj_player.y

direction = point_direction(x, y, mouse_x, mouse_y);

if (direction > 30 && direction < 60) || (direction > 120 && direction < 150) {
	sprite_index = spr_player_droit_haut
}
if (direction > 60 && direction < 120) {
	sprite_index = spr_player_haut
}
if (direction > 315 || direction < 30 || (direction > 150 && direction < 225)) {
	sprite_index = spr_player_droit_mid
}
if (direction > 225 || direction < 315) {
	sprite_index = spr_player_droit_bas
}

if (direction < 180 || direction > 270) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}