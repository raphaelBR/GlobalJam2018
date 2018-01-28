if obj_player.visible = true {
	if (boost == true) {
		draw_set_colour(c_green);
		boost_timer++;
		if boost_timer > 10 {
			boost = false
			boost_timer = 0;
		}
	}
	draw_set_font(fnt_score)
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(display_get_width() / 2, 8, score)
	draw_set_colour(c_white)	

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	for (i = 1; i <= obj_player.life; i++) {
		draw_sprite(spr_heart, image_index, (i * 64) - 32, 16);
	}
	
	if (obj_player.can_extinct == true) {
		draw_healthbar(32, 96, 352, 128, obj_player.extinction, c_black, c_blue, c_teal, 0, true, true)
	} else {
		draw_healthbar(32, 96, 352, 128, obj_player.extinction, c_black, c_red, c_red, 0, true, true)
	}
} else {
	draw_sprite(spr_gameover, 0, room_width/2, room_height/2);
	
	if wait {
		wait_timer++;
	}

	if wait_timer > 45 {
		wait = false;
		blink_timer++;
	}

	if blink_timer > 30 && blink_timer < 60 {
		draw_sprite(spr_popup,0,room_width/2,4*(room_height/5));
	}

	if blink_timer > 60 {
		blink_timer = 0;
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white)
	draw_text(848, 708, global.finalScore)
	draw_set_color(c_red)
	draw_text(850, 710, global.finalScore)
}