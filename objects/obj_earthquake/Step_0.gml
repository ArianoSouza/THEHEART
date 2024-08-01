if global.actives[9].active = false{
	timer= 0
}else{


	timer --
	var quakeEffect = layer_get_fx("e_layer"), quake_layer = fx_get_parameters(quakeEffect)
	if timer<0{
	active = true
	quake_layer.g_Magnitude = 30
	quake_layer.g_ShakeSpeed = 2
	fx_set_parameters(quakeEffect,quake_layer)
	timer = 4200
	}
	else if timer_active <0{
	quake_layer.g_Magnitude = 0
	quake_layer.g_ShakeSpeed = 0
	fx_set_parameters(quakeEffect,quake_layer)
	active = false
	timer_active = 600
	}

	if active = true{
		timer_active--
	}
}