if global.game_over = true{
	exit
}

if est = "start"{
	y-=3
}else if est = "hurt" {
	if x = 475{
		image_index = 3
	}else{
		image_index = 2
	}
	y+= 3
}

if y <180{
	est = "ingame"
}


if y>= 700{
	instance_destroy(self)
}