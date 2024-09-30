timer --

if global.game_over = true{
	instance_destroy(self)
}

if timer<0{
global.game_over = true
}