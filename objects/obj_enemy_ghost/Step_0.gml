t_alpha --

if t_alpha < 0{
	image_alpha+= 0.1
	t_alpha = 60
}

if image_alpha >= 1{
	if global.actives[4].first_death = false{
		global.actives[4].first_death = true
	}
	global.bpm += 75
	instance_destroy(self)
}

if image_alpha < 0{
	if global.actives[4].first_death = false{
		global.actives[4].first_death = true
	}
	global.spirit++
	instance_destroy(self)
}