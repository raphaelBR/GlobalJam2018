///@description INIT VAR

//vitesse de base de mouvement du joueur
spd = 5;

//variables pour bouger
can_move_ghost = true;

//cooldown du tir
cooldown = 0;

instance_create_layer(x, y, "Layer_Player", obj_playerHead);