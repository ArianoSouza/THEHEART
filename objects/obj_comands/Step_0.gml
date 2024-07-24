randomize()
if global.game_over = true{
exit
}

global.timer ++
timer_seconds ++
timer_bpm --
floor_timer_seconds = timer_seconds/64

if floor_timer_seconds < 10 {
	show_time_seconds = "0"+string(floor(floor_timer_seconds))
}
else{
	show_time_seconds = string(floor(floor_timer_seconds))
}


if floor_timer_seconds = 60{
timer_minutes ++
timer_seconds = 0
}

//bpm 

if timer_bpm < 0{
	global.bpm -= choose(-1,0,1)
	timer_bpm = choose(96,128)
}

if global.bpm > 320{
	global.game_over = true
}else if global.bpm < 0 {
	global.game_over =true
}


//sacret_spear









