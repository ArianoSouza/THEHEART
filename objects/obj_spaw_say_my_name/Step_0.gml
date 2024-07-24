if is_active  =false{
	exit
}
if global.timer = 150{
	instance_create_layer(x,y,"inst_enemies",obj_enemy_say_my_name)
}
