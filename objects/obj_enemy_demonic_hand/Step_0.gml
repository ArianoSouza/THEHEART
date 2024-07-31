if global.game_over = true{
instance_destroy(self)
}

if place_meeting(x,y,obj_heart){
image_index = 1
global.bpm +=10
speed = -5
}

if x > 860 or x < -200 or y < - 200 or y > 540{
instance_destroy(self)
}

if x > 360 {
image_yscale = -2
}


//rotation
rotate_time--
if rotate_time < 0 and rotate_plus =true{
rotate_plus = false
rotate_time = 60
}else if rotate_time < 0 and rotate_plus =false{
rotate_plus = true
rotate_time = 60
}

if rotate_plus = true{
	image_angle +=0.2
}
else if rotate_plus = false{
	image_angle-=0.2
}

