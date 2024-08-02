t_alpha --

if t_alpha < 0{
	image_alpha+= 0.1
	t_alpha = 60
}

if image_alpha >= 1{
	global.bpm += 75
	instance_destroy(self)
}

if image_alpha < 0{
	global.spirit++
	instance_destroy(self)
}