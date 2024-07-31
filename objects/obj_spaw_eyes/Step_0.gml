if global.actives[1].active = false{
	t_spaw= 0
}
else{
	randomize()
	if global.game_over = true{
	exit
	}

	t_spaw --
	var place_x = random_range(64,600), place_y = random_range(64,300) 


	if t_spaw<0 and global.timer >= obj_comands.fases[0] and global.timer < obj_comands.fases[2] {
			instance_create_layer(place_x,place_y,"inst_enemies",obj_enemy_eyes)
			t_spaw = 600
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[1] and global.timer < obj_comands.fases[2] {
			instance_create_layer(place_x,place_y,"inst_enemies",obj_enemy_eyes)
			t_spaw = 500
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[2] and global.timer < obj_comands.fases[3] {
			instance_create_layer(place_x,place_y,"inst_enemies",obj_enemy_eyes)
			t_spaw = 400
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[3] {
			instance_create_layer(place_x,place_y,"inst_enemies",obj_enemy_eyes)
			t_spaw = 300
	}
}
