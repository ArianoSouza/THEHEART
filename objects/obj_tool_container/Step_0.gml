if tool_id_container = 1{

	if keyboard_check(ord("1")){
		image_blend = c_yellow
		global.tool_active = "thorn"
		
	}else if keyboard_check_released(ord("1")){
		image_blend = c_white
	}

}
else if tool_id_container = 2{
	if keyboard_check(ord("2")){
			image_blend = c_yellow
			global.tool_active = "bandage"
		
		}else if keyboard_check_released(ord("2")){
			image_blend = c_white
		}
}
else if tool_id_container = 3{
	if keyboard_check(ord("3")){
			image_blend = c_yellow
			global.tool_active = "knife"
		
		}else if keyboard_check_released(ord("3")){
			image_blend = c_white
		}
}