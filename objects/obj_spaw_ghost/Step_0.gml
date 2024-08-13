if global.game_over =true{
	exit
}
if global.actives[4].active=false{
	t_spaw = 5
}
else
{
	t_spaw--
	if t_spaw < 0 and global.timer >= obj_comands.fases[0] and global.timer < obj_comands.fases[4]
	{
		audio_play_sound(s_ghost,2,1)
		instance_create_layer(320,180,"inst_ghost",obj_enemy_ghost)
		t_spaw = choose(1200,1500)
	}else if  t_spaw <0 and global.timer >= obj_comands.fases[4] {
		audio_play_sound(s_ghost,2,1)
		instance_create_layer(320,180,"inst_ghost",obj_enemy_ghost)
		t_spaw = choose(900,1200)
	}
	
}