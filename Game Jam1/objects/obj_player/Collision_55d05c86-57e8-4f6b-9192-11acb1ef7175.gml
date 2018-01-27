
//si le joueur na pas recu de coup
if invulnerable = false {
	life = life -1
	invulnerable = true
	obj_playerHead.image_alpha = 0.50
	alarm_set(0,60)
}