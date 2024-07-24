



	timer--

	if keyboard_check_pressed(vk_anykey) and string_length(tapped_name)<string_length(name){
		tapped_name+= keyboard_lastchar
	}

	if keyboard_check_pressed(vk_enter) and timer > 0 and tapped_name = name{
		instance_activate_all()
		instance_destroy(self)
	}else if keyboard_check_pressed(vk_enter) and timer > 0 and tapped_name != name{
		global.bpm +=100
		instance_activate_all()
		instance_destroy(self)
	}

	if timer < 0{
		global.bpm +=100
		instance_activate_all()
		instance_destroy(self)
	}


