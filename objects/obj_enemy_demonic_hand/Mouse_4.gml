if global.tool_active = "nd"{
	if global.actives[0].first_death = false{
		global.actives[0].first_death = true
	}
speed = -5
image_index = 1
global.spirit++
audio_play_sound(s_demonic_hand,2,0,2)
}