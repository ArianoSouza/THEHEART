if is_active = false{
	exit
}
randomize()

if global.timer = 300{
	n = floor(random(array_length(global.spaw_locations)))
	x = global.spaw_locations[n].my_x
	y = global.spaw_locations[n].my_y
	instance_create_layer(obj_heart.x,obj_heart.y,"inst_enemies",obj_enemy_invisible_treath)
	obj_heart.image_alpha = 0
}

