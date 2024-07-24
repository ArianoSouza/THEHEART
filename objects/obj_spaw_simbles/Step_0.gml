if global.game_over = true{
exit
}
if is_active =false{
exit
}

if global.timer = 600{
	timer_start = true
	instance_create_layer(320,50,"inst_enemies",obj_enemy_simbles)
	instance_create_layer(415,210,"inst_enemies",obj_enemy_simbles)
	instance_create_layer(200,210,"inst_enemies",obj_enemy_simbles)
}

if timer_start = true{
	timer++
	if timer = 599 and instance_exists(obj_enemy_simbles){
		global.bpm += 50
		timer = 0	
		timer_start = false
	}else if timer = 599 and !instance_exists(obj_enemy_simbles) {
		timer = 0	
		timer_start = false
	}

}