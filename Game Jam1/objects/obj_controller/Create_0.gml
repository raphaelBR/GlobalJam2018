if !audio_is_playing(snd_bg_healthy){
	
	if audio_is_playing(snd_bg_neardeath) {
		audio_stop_sound(snd_bg_neardeath);
	}
	
	audio_play_sound(snd_bg_healthy,0,true);
}
global.System = part_system_create()

global.PartFire = part_type_create()
part_type_shape(global.PartFire,pt_shape_cloud);            //This defines the particles shape
part_type_size(global.PartFire,0.2,0.3,0,2);                    //This is for the size
part_type_scale(global.PartFire,0.5,0.5);
part_type_color3(global.PartFire, c_red, c_yellow, c_black);//This sets its colour. There are three different codes for this
part_type_alpha3(global.PartFire,1, 1, 0);                        //This is its alpha. There are three different codes for this
part_type_speed(global.PartFire,0.1,0.8,-0.02,0);            //The particles speed
part_type_direction(global.PartFire,0,359,0,0);            //The direction
part_type_orientation(global.PartFire,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.PartFire,1);                         //This is the blend mode, either additive or normal
part_type_life(global.PartFire,3,6);                       //this is its lifespan in steps

global.PartToxin = part_type_create()
part_type_shape(global.PartToxin,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.PartToxin,1,1,0,2);                    //This is for the size
part_type_scale(global.PartToxin,1,1);                       //This is for scaling
part_type_color1(global.PartToxin,c_white);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.PartToxin,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.PartToxin,0.50,2,-0.10,0);            //The particles speed
part_type_direction(global.PartToxin,0,359,0,20);            //The direction
part_type_orientation(global.PartToxin,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.PartToxin,1);                         //This is the blend mode, either additive or normal
part_type_life(global.PartToxin,1,20);                       //this is its lifespan in steps


score = 0
secondPerPoint = 0.05
boost = false
boost_timer = 0;

alarm_set(0, secondPerPoint * room_speed)
second_phase = true;

barrelSpawn_timer = 0;