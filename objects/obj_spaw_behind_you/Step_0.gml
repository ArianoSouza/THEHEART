if is_active = false{
	exit
}

if global.timer= 300{
instance_create_layer(140,475,"inst_enemies",obj_enemy_behind_you)
instance_create_layer(475,475,"inst_enemies",obj_enemy_behind_you)
}
