draw_self()
draw_set_font(fHud)
draw_text(self.x-20,self.y+3,tool_id_container)


if tool_id_container = 1 and tool_active = true{
	draw_sprite_ext(spr_thorn_tool,0,x,y,scale_img,scale_img,0,c_white,1)
}
else if tool_id_container = 2 and tool_active = true{
	draw_sprite_ext(spr_bandage,0,x,y,scale_img,scale_img,0,c_white,1)
}
else if tool_id_container = 3 and tool_active = true{
	draw_sprite_ext(spr_tool_knife,0,x,y,scale_img,scale_img,0,c_white,1)
}



