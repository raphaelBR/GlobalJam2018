var vc = view_camera[0];

var cx = camera_get_view_x(vc);

var cy = camera_get_view_y(vc);

var cw = camera_get_view_width(vc);

draw_set_font(fnt_score);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

//affiche les coeurs / la vie
for (i = 1; i <= obj_player.life; i++) {
	draw_sprite(spr_heart,-1,cx-32+(i*64),16);
}

draw_text(cx + (cw/2), cy + 32, string("Score: ") + string(thescore));
if (obj_player.can_extinct == true) {
	draw_healthbar(50, 100, 250, 150, obj_player.extinction, c_black, c_yellow, c_green, 0, true, true)
} else {
	draw_healthbar(50, 100, 250, 150, obj_player.extinction, c_black, c_red, c_red, 0, true, true)
}