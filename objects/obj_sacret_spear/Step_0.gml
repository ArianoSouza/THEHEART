if place_meeting(x,y,obj_heart){
	speed = 0
	if image_alpha = 1{
		instance_create_layer(x,y,"inst_enemies",obj_wound)
	}
	image_alpha -=0.01
}

