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
			room_goto(rMain)
		}
	color_patern[1] = c_red
	color_patern[2] = c_white
	
}
else if id_current = 2{
	if keyboard_check_pressed(vk_enter){
		game_end()
	}
	color_patern[1] = c_white
	color_patern[2] = c_red
	
}


//animações

t_ani --
if t_ani < 0{
	invert*=-1
layer_hspeed("Assets_1",0.05*invert)
t_ani = 600
}






