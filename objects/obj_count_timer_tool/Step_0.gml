if global.game_over = true{
	instance_deactivate_object(self)
}

if id_tool = 0{
	if obj_tool_container.timer_thorn<= 0{
	image_yscale =1
	image_alpha = 0
	}else{
		image_alpha = 0.5
		image_yscale = obj_tool_container.timer_thorn/global.timers_tools[0].default_time
	}
}else if id_tool = 1{
	if obj_tool_container.timer_bandage<= 0{
	image_yscale =1
	image_alpha = 0
	}else{
		image_alpha = 0.5
		image_yscale = obj_tool_container.timer_bandage/global.timers_tools[1].default_time
	}
} else if id_tool = 2{
	if obj_tool_container.timer_knife<= 0{
	image_yscale =1
	image_alpha = 0
	}else{
		image_alpha = 0.5
		image_yscale = obj_tool_container.timer_knife/global.timers_tools[2].default_time
	}
}


