x = mouse_x
y = mouse_y

if mouse_check_button_released(mb_right) and global.tool_active != "nd"{
	global.tool_active = "nd"
}

if global.tool_active = "thorn"{
	image_index = 1
}
else if global.tool_active = "bandage"{
	image_index = 2
}
else if global.tool_active = "knife"{
	image_index = 3
}
else{
	image_index = 0
}


if mouse_check_button(mb_left) and global.tool_active = "nd"{
	image_index = 4
}else if  mouse_check_button_released(mb_left) and global.tool_active = "nd"{
	image_index = 0	
}