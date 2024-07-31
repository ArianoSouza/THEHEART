if global.actives[8].active = false{
	timer = 0
}
else{
	timer --
	if timer< 0{
		obj_heart.image_alpha = 0
		instance_create_layer(obj_heart.x,obj_heart.y,"Instances",obj_enemy_doppelganger)
		timer = 2700
	}
}
