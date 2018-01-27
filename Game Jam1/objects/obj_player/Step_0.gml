///@description PLAYER CHECKS

//variables
mouse_left = mouse_check_button(mb_left);
//pour le mouvement
move_up = keyboard_check(ord("W"));
move_down = keyboard_check(ord("S"));
move_left = keyboard_check(ord("A"));
move_right = keyboard_check(ord("D"));

///// MOUVEMENT /////////////////////////////////////

//Empêche le joueur de sortir de l'écran
//57 = moitié du sprite player, on test l'origine
//test gauche
if x <= (sprite_width/2) {
	can_move_left = false;
} else {
	can_move_left = true;
}

//test droit
if x >= room_width-57 {
	can_move_right = false;
} else {
	can_move_right = true;
}

//test haut
if y <= 57 {
	can_move_up = false;
} else {
	can_move_up = true;
}

//test bas
if y >= room_height-57 {
	can_move_down = false;
} else {
	can_move_down = true;
}

//collision avec le mur
//test haut
if collision_line(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_wall,0,true){
	can_move_up = false;
} else {
	can_move_up = true;
}
//test bas
if collision_line(bbox_left,bbox_bottom-1,bbox_right,bbox_bottom-1,obj_wall,0,true){
	can_move_down = false;
} else {
	can_move_down = true;
}
//test gauche
if collision_line(bbox_left-1,bbox_top,bbox_left-1,bbox_bottom,obj_wall,0,true){
	can_move_left = false;
} else {
	can_move_left = true;
}
//test droite
if collision_line(x+(sprite_width/2),y-53,x+(sprite_width/2),y+53,obj_wall,0,true){
	can_move_right = false;
} else {
	can_move_right = true;
}

for (var i = 0; i < spd; ++i) {
    if move_up && can_move_up{
		y--;
	} else {
		break;
	}	
}
for (var i = 0; i < spd; ++i) {
    if move_down && can_move_down{
		y++;
	} else {
		break;
	}	
}
for (var i = 0; i < spd; ++i) {
    if move_left && can_move_left{
		x--;
	} else {
		break;
	}	
}
for (var i = 0; i < spd; ++i) {
    if move_right && !collision_line(bbox_right+1,bbox_top-1,bbox_right+1,bbox_bottom+1,obj_wall,0,true){
		x++;
	} else {
		break;
	}	
}
//déplacement du joueur
/*if move_up && can_move_up{
	y -= spd;
}

if move_down && can_move_down{
	y += spd;
}

if move_left && can_move_left{
	x -= spd;
}

if move_right && can_move_right{
	x += spd;
}*/

///// TIR //////////////////////////////////////////////////////

direction = point_direction(x, y, mouse_x, mouse_y);

image_angle = direction;

//tir avec le clic gauche
if (mouse_left) {
	if(cooldown <= 0) {
		instance_create_layer(x + 0, y + 0, "Layer_Bullet", obj_bullet);
		cooldown = 5;
	}
}

//diminue le cooldown
cooldown--;