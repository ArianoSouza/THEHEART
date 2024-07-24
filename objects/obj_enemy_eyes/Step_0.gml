
t_beating_drop --


if global.game_over = true{
instance_destroy(self)
}
if t_beating_drop < 0{
	global.bpm+=2
	t_beating_drop = 30
}

if global.tool_active = "thorn" and place_meeting(x,y,obj_mouse){
	global.tool_active = "nd"
	instance_destroy(self)
}