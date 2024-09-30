simage_alpha = 0.05
direction = point_direction(obj_spaw_invisible_threat.x,obj_spaw_invisible_threat.y,obj_heart.x,obj_heart.y)
speed = -0.8
image_xscale= 2
image_yscale = image_xscale
image_angle = direction
if global.actives[5].first_death = false{
		global.actives[5].first_death = true
	}