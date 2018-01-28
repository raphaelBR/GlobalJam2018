image_alpha = 0;

x = room_width/2;
y = room_height/2;

window_set_fullscreen(true)

cursor_sprite = spr_cursor
window_set_cursor(cr_none)

//son
audio_stop_all();
audio_play_sound(snd_bg,0,true);