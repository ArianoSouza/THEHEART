draw_self()
draw_set_font(fMenu)
if tool_menu_open = true{
	draw_rectangle_color(250,60,605,350,c_black,c_black,c_black,c_black,0)
	draw_circle_color(320,100,32,c_white,color_patern[1],0)
	draw_circle_color(420,100,32,c_white,color_patern[2],0)
	draw_circle_color(520,100,32,c_white,color_patern[3],0)
	draw_sprite_ext(spr_thorn_tool,0,320,100,2,2,0,c_white,1)
	draw_sprite_ext(spr_bandage,0,420,100,2,2,0,c_white,1)
	draw_sprite_ext(spr_tool_knife,0,520,100,2,2,0,c_white,1)
	
	if id_current = 1{
		draw_roundrect_color_ext(250,10,605,50,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"THORN",15,355,0.5,0.5,0)
		draw_text_ext_transformed(260,25,tool_description_eng[0],15,550,0.6,0.6,0)
		draw_text_ext_transformed(290,142,"level: "+string(global.tool_status[0].level),15,100,1,1,0)
		draw_text_ext_transformed(300,165,global.tool_status[0].value,15,20,1,1,0)
	}
	if id_current = 2{
		draw_roundrect_color_ext(250,10,605,50,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"BANDAGE",0,355,0.5,0.5,0)
		draw_text_ext_transformed(260,25,tool_description_eng[1],15,550,0.6,0.6,0)
		draw_text_ext_transformed(400,142,"level: "+string(global.tool_status[1].level),15,100,1,1,0)
		draw_text_ext_transformed(410,165,global.tool_status[1].value,15,20,1,1,0)
	}
	if id_current = 3{
		draw_roundrect_color_ext(250,10,605,50,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"KNIFE",0,355,0.5,0.5,0)
		draw_text_ext_transformed(260,25,tool_description_eng[2],15,550,0.6,0.6,0)
		draw_text_ext_transformed(500,142,"level: "+string(global.tool_status[2].level),15,100,1,1,0)
		draw_text_ext_transformed(510,165,global.tool_status[2].value,15,20,1,1,0)
	}
	
	draw_text_transformed_color(60,190,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,240,name_button[1],2.5,2.5,0,c_red,c_red,c_white,c_white,1)
	draw_text_transformed_color(60,290,name_button[2],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_sprite_ext(spr_spirit,0,60,160,1,1,0,c_white,1)
	draw_text(90,140,global.spirit)
}
else{
draw_text_transformed_color(60,190,name_button[0],2.5,2.5,0,color_patern[1],color_patern[1],c_white,c_white,1)
draw_text_transformed_color(60,240,name_button[1],2.5,2.5,0,color_patern[2],color_patern[2],c_white,c_white,1)
draw_text_transformed_color(60,290,name_button[2],2.5,2.5,0,color_patern[3],color_patern[3],c_white,c_white,1)
draw_sprite_ext(spr_spirit,0,60,160,1,1,0,c_white,1)
draw_text(90,140,global.spirit)
}


