if exit_game =true{
	if keyboard_check_pressed(vk_down){
		if id_current >= 2{
			id_current = 0
		}
		id_current++
	}
	else if keyboard_check_pressed(vk_up){
		if id_current <= 1{
			id_current = 3
		}
		id_current--
	}
	
	if id_current = 1{
		if keyboard_check_pressed(vk_enter){
			game_end()
		}
		color_patern[1] = c_red
		color_patern[2] = c_white
	}
	else if id_current = 2{
		if keyboard_check_pressed(vk_enter){
		id_current = 4
		exit_game =false
		}
		color_patern[1] = c_white
		color_patern[2] = c_red
	}
}
else if enemy_bar = true{
	if keyboard_check_pressed(vk_escape){ 
		id_current = 3
		enemy_bar =false
	}
	
	if id_current = 1{
		color_patern[1] = c_red
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 2{
		color_patern[1] = c_white
		color_patern[2] = c_red
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 3{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_red
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 4{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_red
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 5{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_red
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 6{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_red
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 7{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_red
		color_patern[8] = c_white
		color_patern[9] = c_white
	}
	else if id_current = 8{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_red
		color_patern[9] = c_white
	}
	else if id_current = 9{
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
		color_patern[5] = c_white
		color_patern[6] = c_white
		color_patern[7] = c_white
		color_patern[8] = c_white
		color_patern[9] = c_red
	}
	
	
	
	if keyboard_check_pressed(vk_down){
		if id_current >= 9{
			id_current = 0
		}
		id_current++
	}
	else if keyboard_check_pressed(vk_up){
		if id_current <= 1{
			id_current = 10
		}
		id_current--
	}
}



else if tool_menu_open = true {
	if keyboard_check_pressed(vk_escape){ 
		id_current = 2
		tool_menu_open =false
	}
	if id_current = 1{
			if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[0].value{
				global.spirit -= global.tool_status[0].value
				global.tool_status[0].level+=1
				global.tool_status[0].value+=50
				global.timers_tools[0].default_time-=60
			}
		color_patern[1] = c_red
		color_patern[2] = c_white
		color_patern[3] = c_white
	
	}
	else if id_current = 2{
		if keyboard_check_pressed(vk_enter){
			if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[1].value{
				global.spirit -= global.tool_status[1].value
				global.tool_status[1].level+=1
				global.tool_status[1].value+=50
				global.timers_tools[1].default_time-=60
			}
		}
		color_patern[1] = c_white
		color_patern[2] = c_red
		color_patern[3] = c_white
	
	}
	else if id_current = 3{
		if keyboard_check_pressed(vk_enter){
			if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[2].value{
					global.spirit -= global.tool_status[2].value
					global.tool_status[2].level+=1
					global.tool_status[2].value+=50
					global.timers_tools[2].default_time-=60
				}
		}
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_red
	
	}
	
	if keyboard_check_pressed(vk_down){
		if id_current >= 3{
			id_current = 0
		}
		id_current++
	}
	else if keyboard_check_pressed(vk_up){
		if id_current <= 1{
			id_current = 4
		}
		id_current--
	}
}
else
{
	if id_current = 1{
			if keyboard_check_pressed(vk_enter){
				room_goto(rMain)
			}
		color_patern[1] = c_red
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_white
	
	}
	else if id_current = 2{
		if keyboard_check_pressed(vk_enter){
			id_current = 1
			tool_menu_open = true
		}
		color_patern[1] = c_white
		color_patern[2] = c_red
		color_patern[3] = c_white
		color_patern[4] = c_white
	
	}
	else if id_current = 3{
		if keyboard_check_pressed(vk_enter){
			enemy_bar = true
			id_current = 1
		}
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_red
		color_patern[4] = c_white
	
	}
	else if id_current = 4{
		if keyboard_check_pressed(vk_enter){
			id_current = 2
			exit_game = true
		}
		color_patern[1] = c_white
		color_patern[2] = c_white
		color_patern[3] = c_white
		color_patern[4] = c_red
	
	}
	
	if keyboard_check_pressed(vk_down){
		if id_current >= 4{
			id_current = 0
		}
		id_current++
	}
	else if keyboard_check_pressed(vk_up){
		if id_current <= 1{
			id_current = 5
		}
		id_current--
	}
}

	










