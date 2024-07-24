if is_active = false{
	exit
}
if global.timer = 600{
	n = floor(random(array_length(global.spaw_locations)))
	instance_create_layer(global.spaw_locations[n].my_x,global.spaw_locations[n].my_y,"inst_enemies",obj_sacret_spear)
}