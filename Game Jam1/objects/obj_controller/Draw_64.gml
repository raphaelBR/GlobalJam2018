if (boost == true) {
	draw_set_colour(c_green);
	boost = false
}
draw_set_font(font0)
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(display_get_width() / 2, 8, score)
draw_set_colour(c_white)	

draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (i = 1; i <= obj_player.life; i++) {
	draw_sprite(spr_heart, 15, (i * 64) - 32, 16);
}

if (obj_player.can_extinct == true) {
	draw_healthbar(32, 96, 352, 128, obj_player.extinction, c_black, c_gray, c_white, 0, true, true)
} else {
	draw_healthbar(32, 96, 352, 128, obj_player.extinction, c_black, c_red, c_red, 0, true, true)
}