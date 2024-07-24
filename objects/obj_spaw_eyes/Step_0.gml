if is_active = false{
	exit
}
randomize()

if global.game_over = true{
exit
}

t_spaw --
var place_x = random_range(64,600), place_y = random_range(64,300) 

if global.timer > 900{
	if t_spaw<= 0{
		instance_create_layer(place_x,place_y,"inst_enemies",obj_enemy_eyes)
		t_spaw = 300
	}
}
