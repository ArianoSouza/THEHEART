if global.game_over = true{
	instance_destroy(self)
}
timer--

if timer >=500 {
	if state = 0{
		if timer_glow > 90{
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -90{
		audio_play_sound(s_simbles,2,0,0.7)
		state = 0
		}
		timer_glow--
	}
}
else if timer >= 400 and timer < 500 {
	if state = 0{
		if timer_glow > 60{
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -60{
		audio_play_sound(s_simbles,2,0,0.7)
		state = 0
		}
		timer_glow--
	}
}
else if timer >= 300 and timer < 400 {
	if state = 0{
		if timer_glow > 30{
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -30{
		audio_play_sound(s_simbles,2,0,0.7)
		state = 0
		}
		timer_glow--
	}
}
else if timer >= 200 and timer < 300 {
	if state = 0{
		if timer_glow > 15{
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -15{
		audio_play_sound(s_simbles,2,0,0.7)
		state = 0
		}
		timer_glow--
	}
}
else if timer >= 100 and timer < 200 {
	if state = 0{
		if timer_glow > 5{
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -5{
		audio_play_sound(s_simbles,2,0,0.57)
		state = 0
		}
		timer_glow--
	}
} 
else if timer< 100 {
	if state = 0{
		if timer_glow > 1 {
		state = 1
		}
		timer_glow++
	}else if state = 1 {
	if timer_glow < -1{
		audio_play_sound(s_simbles,2,0,0.7)
		state = 0
		}
		timer_glow--
	}
}

if timer < 0{
	instance_destroy(self)
}

if state = 0{
 image_alpha = 1
} else if state =1{
	image_alpha = 0.3
}