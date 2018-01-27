/*
//effect of slow
if explosion = false {
image_speed = 0
speed = speed -0.1	
}


//explosion
if speed <= 0 {
explosion = true
}

if image_index >= 3 {
instance_destroy()
}

/*
if explosion = true {
	image_speed = 10
	if place_meeting(x,y,obj_enemy) {
		instance_destroy(obj_enemy)
	}
}

//traine de feu
if fire = true {
	repeat(5) {
	effect_create_above(ef_firework, random_range(x-10, x+10), random_range(y-10, y+10), choose(1, 50, 100), choose(c_red));
	}
	fire = false
}

*/