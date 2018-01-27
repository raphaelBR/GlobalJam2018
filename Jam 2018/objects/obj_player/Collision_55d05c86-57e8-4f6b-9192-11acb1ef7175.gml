
//si le joueur na pas recu de coup
if invulnerable = false {
	
instance_destroy(obj_enemy)
life = life -1
invulnerable = true
obj_playerHead.image_alpha = 0.50
alarm_set(0,60)
}

//si le joueur a deja recu un coup
if invulnerable = true {
	
instance_destroy(obj_enemy)
}