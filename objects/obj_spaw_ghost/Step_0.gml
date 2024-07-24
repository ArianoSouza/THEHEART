if is_active = false{
	exit
}
if global.timer = 300{
	instance_create_layer(320,180,"inst_enemies",obj_enemy_ghost)
}