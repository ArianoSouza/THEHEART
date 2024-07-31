if global.actives[6].active = false{
	timer = 0
}
else{
	timer --
	if timer<0  and global.timer < obj_comands.fases[2] {
	instance_create_layer(140,475,"inst_enemies",obj_enemy_behind_you)
	instance_create_layer(475,475,"inst_enemies",obj_enemy_behind_you)
	timer = 1800
	}
	else if timer<0 and global.timer >= obj_comands.fases[2]{
	instance_create_layer(140,475,"inst_enemies",obj_enemy_behind_you)
	instance_create_layer(475,475,"inst_enemies",obj_enemy_behind_you)
	timer = 1200
	}
}
