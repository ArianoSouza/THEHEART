if global.actives[7].active = false{
	timer =0
}else {
	timer--
	if timer < 0{
		instance_create_layer(x,y,"inst_enemies",obj_enemy_say_my_name)
		timer = 4200
	}
}