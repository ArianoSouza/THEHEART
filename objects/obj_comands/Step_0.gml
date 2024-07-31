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


//fases

if global.timer = 300{
	global.actives[0].active = true
}else if global.timer = fases[1] {
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
}
else if global.timer = fases[2] {
	global.actives[1].active = false
	global.actives[2].active = false
	global.actives[3].active = false
	global.actives[4].active = false
	global.actives[5].active = false
	global.actives[6].active = false
	global.actives[7].active = false
	global.actives[8].active = false
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
}
else if global.timer = fases[3] {
	global.actives[1].active = false
	global.actives[2].active = false
	global.actives[3].active = false
	global.actives[4].active = false
	global.actives[5].active = false
	global.actives[6].active = false
	global.actives[7].active = false
	global.actives[8].active = false
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
}
else if global.timer = fases[4] {
	global.actives[1].active = false
	global.actives[2].active = false
	global.actives[3].active = false
	global.actives[4].active = false
	global.actives[5].active = false
	global.actives[6].active = false
	global.actives[7].active = false
	global.actives[8].active = false
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
}
else if global.timer = fases[5] {
	global.actives[1].active = false
	global.actives[2].active = false
	global.actives[3].active = false
	global.actives[4].active = false
	global.actives[5].active = false
	global.actives[6].active = false
	global.actives[7].active = false
	global.actives[8].active = false
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
	global.actives[choose(1,2,3,4,5,6,7,8)].active = true
}









