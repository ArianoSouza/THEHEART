t_beating_drop --


if global.game_over = true{
	part_emitter_destroy(obj_wound.particle_id,0)
instance_destroy(self)
}
if t_beating_drop < 0{
	global.bpm-=5
	t_beating_drop = 30
}

if global.tool_active = "bandage" and place_meeting(x,y,obj_mouse){
	part_emitter_destroy(particle_id,0)
	global.tool_active = "nd"
	if global.actives[3].first_death = false{
		global.actives[3].first_death = true
	}
	global.spirit++
	obj_tool_container.timer_bandage = global.timers_tools[1].default_time
	instance_destroy(self)
	
}