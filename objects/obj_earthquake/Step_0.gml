if is_active = false{
	exit
}

var quakeEffect = layer_get_fx("e_layer"), quake_layer = fx_get_parameters(quakeEffect)
if global.timer = 300{
quake_layer.g_Magnitude = 30
quake_layer.g_ShakeSpeed = 2
fx_set_parameters(quakeEffect,quake_layer)
}
else if global.timer = 600{
quake_layer.g_Magnitude = 0
quake_layer.g_ShakeSpeed = 0
fx_set_parameters(quakeEffect,quake_layer)
}