randomize()
t_spaw --
if global.game_over = true{
exit
}
if is_active = false{
exit
}

t_move --


if global.timer < 640{
	if t_spaw < 0{
		instance_create_layer(x,y,"inst_enemies",obj_enemy_demonic_hand)
		t_spaw = choose(192,320,448,576)//3,5,7,9 seg
	}
	if t_move < 0{
		n = floor(random(array_length(global.spaw_locations)))
		t_move = 30
	}
}
else{
	if t_spaw < 0{
			instance_create_layer(x,y,"inst_enemies",obj_enemy_demonic_hand)
			t_spaw = 32//1seg
	}
	if t_move < 0{
		n = floor(random(array_length(global.spaw_locations)))
		t_move = 15
	}
}

x = global.spaw_locations[n].my_x
y = global.spaw_locations[n].my_y