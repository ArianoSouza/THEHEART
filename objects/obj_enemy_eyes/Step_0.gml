if state = "start"{
	if image_index >9{
		state = "middle"
	}
	image_speed = 1
}
else if state = "middle"{
	image_index = 9
	image_speed = 0
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
		global.spirit++
		if global.actives[1].first_death = false{
			global.actives[1].first_death = true
		}
		obj_tool_container.timer_thorn = global.timers_tools[0].default_time
		sprite_index = spr_eye_damaged
		image_index = 0
		audio_play_sound(s_eye,2,0,0.5)
		state = "end"
	}
}
else if state = "end"{
	if 	image_alpha<=0{
		instance_destroy(self)
	}
	image_speed =1.5
	image_alpha-= 0.03
	
}
