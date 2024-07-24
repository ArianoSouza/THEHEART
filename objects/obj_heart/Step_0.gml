if global.game_over = true{
instance_destroy(self)
}

var beatEffect = layer_get_fx("Instances"), beat_layer = fx_get_parameters(beatEffect)

if global.bpm >= 220{
beat_layer.g_RipplesSpeed = 8
fx_set_parameters(beatEffect,beat_layer)
} else if global.bpm > 120 and global.bpm < 220{
beat_layer.g_RipplesSpeed = 4
fx_set_parameters(beatEffect,beat_layer)
}else{
beat_layer.g_RipplesSpeed = 2
fx_set_parameters(beatEffect,beat_layer)
}

if keyboard_check_pressed(vk_space){
	global.bpm --
}