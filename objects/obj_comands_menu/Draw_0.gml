draw_self()
draw_set_font(fMenu)
draw_set_halign(fa_left)
 if enemy_bar= true{
	draw_rectangle_color(250,90,605,350,c_black,c_black,c_black,c_black,0)
	draw_circle_color(320,150,32,c_white,color_patern[1],0)
	draw_circle_color(420,150,32,c_white,color_patern[2],0)
	draw_circle_color(520,150,32,c_white,color_patern[3],0)
	draw_sprite_ext(spr_demonic_hand_guide,0,320,150,2,2,0,c_white,1)
	draw_sprite_ext(spr_enemy_simbles,0,420,150,2,2,0,c_white,1)
	draw_sprite_ext(spr_eyes,2,520,150,2,2,0,c_white,1)
	
	if id_current = 1{
		draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"Demonic Hand",15,500,0.5,0.5,0)
		draw_text_ext_transformed(260,25,global.enemies_desc[0].descrption,20,570,0.6,0.6,0)
	}
	if id_current = 2{
		draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"Simbles",0,355,0.5,0.5,0)
		draw_text_ext_transformed(260,25,global.enemies_desc[1].descrption,15,550,0.6,0.6,0)
	}
	if id_current = 3{
		draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
		draw_text_ext_transformed(260,15,"Eyes",0,355,0.5,0.5,0)
		draw_text_ext_transformed(260,25,global.enemies_desc[1].descrption,15,550,0.6,0.6,0)
	}
	
	draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,c_red,c_red,c_white,c_white,1)
	draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,c_white,c_white,c_white,c_white,1)

}



else if exit_game = true{
	draw_roundrect_color_ext(170,130,470,230,15,15,c_black,c_black,0)
	draw_set_halign(fa_center)
	draw_text_ext_transformed_color(320,140,"EXIT GAME?",15,100,1,1,0,c_white,c_white,c_white,c_white,1)
	draw_text_ext_transformed_color(250,200,"Yes",15,100,1,1,0,color_patern[1],color_patern[1],c_white,c_white,1)
	draw_text_ext_transformed_color(390,200,"no",15,100,1,1,0,color_patern[2],color_patern[2],c_white,c_white,1)
	draw_set_halign(fa_left)
	
	draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,c_red,c_red,c_white,c_white,1)
}

else if tool_menu_open = true{
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
	
	draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,c_red,c_red,c_white,c_white,1)
	draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
	draw_rectangle_color(340,310,440,350,c_white,c_white,c_white,c_white,1)
	draw_set_halign(fa_center)
	draw_sprite_ext(spr_spirit,0,410,330,1,1,0,c_white,1)
	draw_text_ext_transformed(375,315,global.spirit,15,150,1,1,0)
	draw_set_halign(fa_left)
}
else{
draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,color_patern[1],color_patern[1],c_white,c_white,1)
draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,color_patern[2],color_patern[2],c_white,c_white,1)
draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,color_patern[3],color_patern[3],c_white,c_white,1)
draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,color_patern[4],color_patern[4],c_white,c_white,1)

}


