if fase_menu = "start"{
	if fade_alpha < 0{
		fase_menu = "current"
	}
fade_alpha -= 0.01
fade_title += 0.01
}
else if fase_menu = "change" {
	if fade_alpha >=1 and exit_game = true{
		game_end()
	}
	else if fade_alpha >=1 and start_game = true{
		room = rMain
	}
fade_alpha +=0.01
}
else if fase_menu = "current"{
	
	
	 if config = true{
		if keyboard_check_pressed(vk_up) && global.volume_general < 1{
			global.volume_general += 0.1
			audio_sound_gain(s_music_menu,global.volume_general,0)
		}else if keyboard_check_pressed(vk_down) && global.volume_general > 0{
			global.volume_general -= 0.1
			audio_sound_gain(s_music_menu,global.volume_general,0)
		}
		
		if keyboard_check_pressed(vk_escape){
			config =false
		}
	}
			
	
	else if exit_game =true{
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
				audio_stop_sound(s_music_menu)
				if file_exists("save_data.sav"){
					file_delete("save_data.sav")
					ini_open("save_data.sav")
					ini_write_real("data_player","spirit_value",global.spirit)
					ini_write_real("data_game","cost_thorn",global.tool_status[0].value)
					ini_write_real("data_game","level_thorn",global.tool_status[0].level)
					ini_write_real("data_game","cost_bandage",global.tool_status[1].value)
					ini_write_real("data_game","level_bandage",global.tool_status[1].level)
					ini_write_real("data_game","cost_knife",global.tool_status[2].value)
					ini_write_real("data_game","level_knife",global.tool_status[2].level)
					ini_write_real("data_game","volume",global.volume_general)
					ini_write_real("data_enemies","see_hand",global.actives[0].first_death)
					ini_write_real("data_enemies","see_eyes",global.actives[1].first_death)
					ini_write_real("data_enemies","see_simbles",global.actives[2].first_death)
					ini_write_real("data_enemies","see_spear",global.actives[3].first_death)
					ini_write_real("data_enemies","see_ghost",global.actives[4].first_death)
					ini_write_real("data_enemies","see_invisible",global.actives[5].first_death)
					ini_write_real("data_enemies","see_behind",global.actives[6].first_death)
					ini_write_real("data_enemies","see_smn",global.actives[7].first_death)
					ini_write_real("data_enemies","see_doppler",global.actives[8].first_death)
					ini_close()
				}else{
					ini_open("save_data.sav")
					ini_write_real("data_player","spirit_value",global.spirit)
					ini_write_real("data_game","cost_thorn",global.tool_status[0].value)
					ini_write_real("data_game","level_thorn",global.tool_status[0].level)
					ini_write_real("data_game","cost_bandage",global.tool_status[1].value)
					ini_write_real("data_game","level_bandage",global.tool_status[1].level)
					ini_write_real("data_game","cost_knife",global.tool_status[2].value)
					ini_write_real("data_game","level_knife",global.tool_status[2].level)
					ini_write_real("data_game","volume",global.volume_general)
					ini_write_real("data_enemies","see_hand",global.actives[0].first_death)
					ini_write_real("data_enemies","see_eyes",global.actives[1].first_death)
					ini_write_real("data_enemies","see_simbles",global.actives[2].first_death)
					ini_write_real("data_enemies","see_spear",global.actives[3].first_death)
					ini_write_real("data_enemies","see_ghost",global.actives[4].first_death)
					ini_write_real("data_enemies","see_invisible",global.actives[5].first_death)
					ini_write_real("data_enemies","see_behind",global.actives[6].first_death)
					ini_write_real("data_enemies","see_smn",global.actives[7].first_death)
					ini_write_real("data_enemies","see_doppler",global.actives[8].first_death)
					ini_close()
				}
				fase_menu = "change"
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
				if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[0].value and global.timers_tools[0].default_time > 0 {
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
				if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[1].value and global.timers_tools[1].default_time > 0{
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
				if keyboard_check_pressed(vk_enter) and global.spirit >= global.tool_status[2].value and global.timers_tools[2].default_time > 0{
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
					audio_stop_sound(s_music_menu)
					start_game = true
					fase_menu = "change"
				}
			color_patern[1] = c_red
			color_patern[2] = c_white
			color_patern[3] = c_white
			color_patern[4] = c_white
			color_patern[5] = c_white
	
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
			color_patern[5] = c_white
	
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
			color_patern[5] = c_white
	
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
			color_patern[5] = c_white
	
		}
		else if id_current = 5{
			if keyboard_check_pressed(vk_enter){
				id_current = 1
				config = true
			}
			color_patern[1] = c_white
			color_patern[2] = c_white
			color_patern[3] = c_white
			color_patern[4] = c_white
			color_patern[5] = c_red
	
		}
	
		if keyboard_check_pressed(vk_down){
			if id_current >= 5{
				id_current = 0
			}
			id_current++
		}
		else if keyboard_check_pressed(vk_up){
			if id_current <= 1{
				id_current = 6
			}
			id_current--
		}
	}

	
	// sound

	if keyboard_check_pressed(vk_up){
		audio_play_sound(s_select_arrow,1,0)
	}else if keyboard_check_pressed(vk_down){
		audio_play_sound(s_select_arrow_downpich,1,0)
	}
}









