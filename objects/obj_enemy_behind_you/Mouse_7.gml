if global.tool_active = "knife"{
	obj_tool_container.timer_knife = global.timers_tools[2].default_time
	global.tool_active = "nd"
	audio_play_sound(s_behind_u_2,2,0)
	est = "hurt"
	global.spirit+=1
}
