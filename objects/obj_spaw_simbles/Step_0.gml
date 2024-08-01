if global.game_over = true{
exit
}
if global.actives[2].active = false{
t_spaw = 0
}else{
	t_spaw--
	if t_spaw < 0 and global.timer >= obj_comands.fases[0] and global.timer < obj_comands.fases[2]{
		timer_start = true
		instance_create_layer(320,50,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(415,210,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(200,210,"inst_enemies",obj_enemy_simbles)
		t_spaw = choose(900,1200)
	}
	else if t_spaw < 0 and global.timer >= obj_comands.fases[2] and global.timer < obj_comands.fases[3]{
		timer_start = true
		instance_create_layer(320,50,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(415,210,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(200,210,"inst_enemies",obj_enemy_simbles)
		t_spaw = choose(780,900)
	}
	else if t_spaw < 0 and global.timer >= obj_comands.fases[3] and global.timer < obj_comands.fases[4]{
		timer_start = true
		instance_create_layer(320,50,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(415,210,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(200,210,"inst_enemies",obj_enemy_simbles)
		t_spaw = choose(720,840)
	}
	else if t_spaw < 0 and global.timer >= obj_comands.fases[4] {
		timer_start = true
		instance_create_layer(320,50,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(415,210,"inst_enemies",obj_enemy_simbles)
		instance_create_layer(200,210,"inst_enemies",obj_enemy_simbles)
		t_spaw = 660
	}

	if timer_start = true{
		timer++
		if timer = 599 and instance_exists(obj_enemy_simbles){
			global.bpm += 50
			timer = 0	
			timer_start = false
		}else if timer = 599 and !instance_exists(obj_enemy_simbles) {
			timer = 0	
			timer_start = false
		}

	}
}