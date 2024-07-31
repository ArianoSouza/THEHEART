if global.actives[3].active = false{
	t_spaw =0
}else{

	t_spaw --
	if t_spaw<0 and global.timer >= obj_comands.fases[0] and global.timer < obj_comands.fases[2]  {
		n = floor(random(array_length(global.spaw_locations)))
		instance_create_layer(global.spaw_locations[n].my_x,global.spaw_locations[n].my_y,"inst_enemies",obj_sacret_spear)
		t_spaw = 600
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[2] and global.timer < obj_comands.fases[3]  {
		n = floor(random(array_length(global.spaw_locations)))
		instance_create_layer(global.spaw_locations[n].my_x,global.spaw_locations[n].my_y,"inst_enemies",obj_sacret_spear)
		t_spaw = 500
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[3] and global.timer < obj_comands.fases[4]  {
		n = floor(random(array_length(global.spaw_locations)))
		instance_create_layer(global.spaw_locations[n].my_x,global.spaw_locations[n].my_y,"inst_enemies",obj_sacret_spear)
		t_spaw = 400
	}
	else if t_spaw<0 and global.timer >= obj_comands.fases[4]  {
		n = floor(random(array_length(global.spaw_locations)))
		instance_create_layer(global.spaw_locations[n].my_x,global.spaw_locations[n].my_y,"inst_enemies",obj_sacret_spear)
		t_spaw = 300
	}
}