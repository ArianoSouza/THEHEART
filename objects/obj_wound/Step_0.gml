t_beating_drop --


if global.game_over = true{
	part_emitter_destroy(obj_wound.particle_id,0)
instance_destroy(self)
}
if t_beating_drop < 0{
	global.bpm-=3
	t_beating_drop = 30
}

if global.tool_active = "bandage" and place_meeting(x,y,obj_mouse){
	part_emitter_destroy(obj_wound.particle_id,0)
	instance_destroy(self)
	
}