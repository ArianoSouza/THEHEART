var beatEffect = layer_get_fx("Instances"), beat_layer = fx_get_parameters(beatEffect)

if global.game_over = true and global.bpm > 320{
	sprite_index = spr_heart_explodes
	image_speed = 0.7
	beat_layer.g_RipplesSpeed = 0
	fx_set_parameters(beatEffect,beat_layer)
	if image_index >3{
		image_speed = 0
	}
}
else if global.game_over = true and global.bpm < 0{
	sprite_index = spr_heart_dried
	image_speed = 0.7
	beat_layer.g_RipplesSpeed = 0
	fx_set_parameters(beatEffect,beat_layer)
	if image_index >3{
		image_speed = 0
	}
}
else{



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
if keyboard_check_pressed(ord("C")){
	global.bpm ++
}
}