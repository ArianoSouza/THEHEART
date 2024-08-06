

if global.game_over = true{
exit
}

if global.actives[0].active = false{
t_spaw = 0
}
else{

	randomize()
	t_spaw --
	t_move --


	if global.timer < obj_comands.fases[1]{
		if t_spaw < 0{
			instance_create_layer(x,y,"inst_enemies",obj_enemy_demonic_hand)
			t_spaw = choose(192,320,448,576)//3,5,7,9 seg
		}
		if t_move < 0{
			n = floor(random(array_length(global.spaw_locations)))
			t_move = 30
		}
	}
	else if global.timer >= obj_comands.fases[1] and global.timer < obj_comands.fases[3]{
		if t_spaw < 0{
				instance_create_layer(x,y,"inst_enemies",obj_enemy_demonic_hand)
				t_spaw = choose(120,240)
		}
		if t_move < 0{
			n = floor(random(array_length(global.spaw_locations)))
			t_move = 15
		}
	}
	else if global.timer >= obj_comands.fases[3] {
		if t_spaw < 0{
				instance_create_layer(x,y,"inst_enemies",obj_enemy_demonic_hand)
				t_spaw = 120
		}
		if t_move < 0{
			n = floor(random(array_length(global.spaw_locations)))
			t_move = 15
		}
	}

	x = global.spaw_locations[n].my_x
	y = global.spaw_locations[n].my_y
}