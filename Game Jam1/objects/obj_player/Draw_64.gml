draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

//affiche les coeurs / la vie
for (i = 1; i <= life; i++) {
	draw_sprite(spr_heart,15,32+(i*64),16);
}

if (can_extinct == true) {
	draw_healthbar(50, 100, 250, 150, extinction, c_black, c_yellow, c_green, 0, true, true)
} else {
	draw_healthbar(50, 100, 250, 150, extinction, c_black, c_red, c_red, 0, true, true)
}