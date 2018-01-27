var vc = view_camera[0];

var cx = camera_get_view_x(vc);

var cy = camera_get_view_y(vc);

var cw = camera_get_view_width(vc);

draw_set_font(fnt_score);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

draw_text(cx + (cw/2), cy + 32, string("Score: ") + string(thescore));
draw_text(cx + 925, cy + 32, string("Life: ") + string(obj_player.life));
draw_text(cx + (cw/4), cy + 32, string("Life: ") + string(obj_player.extinction));