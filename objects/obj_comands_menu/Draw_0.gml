draw_self()
draw_set_font(fMenu)
draw_set_halign(fa_left)
draw_text_ext_transformed_color(540,340,global.game_v,15,100,0.8,0.8,0,c_white,c_white,c_white,c_white,0.5)
if fase_menu = "start"{
	draw_set_alpha(fade_alpha)
	draw_rectangle_color(0,0,640,360,c_black,c_black,c_black,c_black,0)
	draw_text_ext_transformed_color(30,15,"THE HEART",15,150,3,5,0,c_white,c_white,c_red,c_red,fade_title)
}
else if fase_menu = "change"{
	draw_set_alpha(fade_alpha)
	draw_rectangle_color(0,0,640,360,c_black,c_black,c_black,c_black,0)
}
else if fase_menu = "current" {
	draw_set_alpha(1)
	draw_text_ext_transformed_color(30,15,"THE HEART",15,150,3,5,0,c_white,c_white,c_red,c_red,fade_title)

	
	
	if config = true{
		draw_rectangle_color(295,180,590,270,c_black,c_black,c_black,c_black,0)
		draw_sprite_ext(spr_volume_button,0,315,225,2,2,0,c_red,1)
		draw_rectangle_color(345,210,345+global.volume_general*10*23.5,240,c_white,c_white,c_red,c_red,0)
		
		draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_sprite_ext(spr_config_button,0,600,320,2,2,0,c_red,1)
	} 
	else if enemy_bar= true{
		 
		 
		draw_text_transformed_color(60,140,name_button[0],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(60,190,name_button[1],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		draw_text_transformed_color(60,240,name_button[2],2.5,2.5,0,c_red,c_red,c_white,c_white,1)
		draw_text_transformed_color(60,290,name_button[3],2.5,2.5,0,c_white,c_white,c_white,c_white,1)
		
		
		 if id_current > 0 and id_current <=6{
			draw_rectangle_color(250,90,605,350,c_black,c_black,c_black,c_black,0)
			draw_circle_color(320,140,32,c_white,color_patern[1],0)
			draw_circle_color(420,140,32,c_white,color_patern[2],0)
			draw_circle_color(520,140,32,c_white,color_patern[3],0)
			draw_circle_color(320,240,32,c_white,color_patern[4],0)
			draw_circle_color(420,240,32,c_white,color_patern[5],0)
			draw_circle_color(520,240,32,c_white,color_patern[6],0)
		 }
		 else{
			draw_rectangle_color(250,90,605,350,c_black,c_black,c_black,c_black,0)
			draw_circle_color(320,140,32,c_white,color_patern[7],0)
			draw_circle_color(420,140,32,c_white,color_patern[8],0)
			draw_circle_color(520,140,32,c_white,color_patern[9],0)
		 }
			if id_current > 0 and id_current <=6{
				if global.actives[0].first_death = true{
				draw_sprite_ext(spr_demonic_hand_guide,0,320,140,1,1,0,c_white,1)
				}
				if global.actives[1].first_death = true{
				draw_sprite_ext(spr_eyes,9,420,140,1,1,0,c_white,1)
				}
				if global.actives[2].first_death = true{
				draw_sprite_ext(spr_enemy_simbles,2,520,140,1,1,0,c_white,1)
				}
				if global.actives[3].first_death = true{
				draw_sprite_ext(spr_sacret_spear,0,350,240,0.8,0.8,0,c_white,1)
				}
				if global.actives[4].first_death = true{
				draw_sprite_ext(spr_enemy_ghost,0,420,240,0.8,0.8,0,c_white,1)
				}
				if global.actives[5].first_death = true{
				draw_sprite_ext(spr_enemy_invisible_threat_model,2,520,240,1,1,0,c_white,1)
				}
			}
			else if id_current > 6 and id_current <=12{
				if global.actives[6].first_death = true{
				draw_sprite_ext(spr_enemy_behind_you,0,320,140,0.6,0.6,0,c_white,1)
				}
				if global.actives[7].first_death = true{
				draw_sprite_ext(spr_font_say_my_name,0,420,155,2,2,0,c_white,1)
				}
				if global.actives[8].first_death = true{
				draw_sprite_ext(spr_enemy_doppelganger,2,520,135,0.7,0.7,0,c_white,1)
				}
			}
		if id_current = 1{
			if global.actives[0].first_death = true{
			draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
			draw_text_ext_transformed(260,15,"Demonic Hand",15,500,0.5,0.5,0)
			draw_text_ext_transformed(260,25,global.enemies_desc[0].description,20,570,0.6,0.6,0)
			}else{
			draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
			draw_text_ext_transformed(260,15,"?",15,500,0.5,0.5,0)
			draw_text_ext_transformed(260,25,"???",20,570,0.6,0.6,0)
			}
		}
		if id_current = 2{
			if global.actives[1].first_death = true{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Eyes",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[1].description,20,550,0.6,0.6,0)
			}else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 3{
			if global.actives[2].first_death = true{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Simbles",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[2].description,20,550,0.6,0.6,0)
			}else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 4{
			if global.actives[3].first_death = true{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Sacred Spear",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[3].description,20,550,0.6,0.6,0)
			}else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 5{
			if global.actives[4].first_death = true{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Ghost",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[4].description,20,550,0.6,0.6,0)
			}
			else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 6{
			if global.actives[5].first_death = true {
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Invisible threat",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[5].description,20,550,0.6,0.6,0)
			}
			else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
			
		}
		if id_current = 7{
			if global.actives[6].first_death = true {
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Behind You",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[6].description,20,550,0.6,0.6,0)
			}
			else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 8{
			if global.actives[7].first_death = true {
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_set_font(global.font_SMN)
				draw_text_ext_transformed(265,25,"Say my name",0,355,0.5,0.5,0)
				draw_set_font(fMenu)
				draw_text_ext_transformed(260,25,global.enemies_desc[7].description,20,550,0.6,0.6,0)
				draw_sprite_ext(spr_smn_board,0,140,235,2,2.5,0,c_white,1)
			}
			else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
		if id_current = 9{
			if global.actives[8].first_death = true {
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"Doupleganger",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,global.enemies_desc[8].description,20,550,0.6,0.6,0)
			}
			else{
				draw_roundrect_color_ext(250,10,605,70,15,15,c_white,c_white,1)
				draw_text_ext_transformed(260,15,"?",0,355,0.5,0.5,0)
				draw_text_ext_transformed(260,25,"???",20,550,0.6,0.6,0)
			}
		}
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
			if global.timers_tools[0].default_time > 0{
				draw_text_ext_transformed(290,142,"level: "+string(global.tool_status[0].level),15,100,1,1,0)
			}else{
			draw_text_ext_transformed(290,142,"level: Max",15,100,1,1,0)
			}
			draw_text_ext_transformed(300,165,global.tool_status[0].value,15,20,1,1,0)
		}
		if id_current = 2{
			draw_roundrect_color_ext(250,10,605,50,15,15,c_white,c_white,1)
			draw_text_ext_transformed(260,15,"BANDAGE",0,355,0.5,0.5,0)
			draw_text_ext_transformed(260,25,tool_description_eng[1],15,550,0.6,0.6,0)
			if global.timers_tools[1].default_time > 0{
				draw_text_ext_transformed(400,142,"level: "+string(global.tool_status[1].level),15,100,1,1,0)
			}else{
				draw_text_ext_transformed(400,142,"level: Max",15,100,1,1,0)
			}
			draw_text_ext_transformed(410,165,global.tool_status[1].value,15,20,1,1,0)
		}
		if id_current = 3{
			draw_roundrect_color_ext(250,10,605,50,15,15,c_white,c_white,1)
			draw_text_ext_transformed(260,15,"KNIFE",0,355,0.5,0.5,0)
			draw_text_ext_transformed(260,25,tool_description_eng[2],15,550,0.6,0.6,0)
			if global.timers_tools[0].default_time > 0{
				draw_text_ext_transformed(500,142,"level: "+string(global.tool_status[2].level),15,100,1,1,0)
			}else{
				draw_text_ext_transformed(500,142,"level: Max",15,100,1,1,0)
			}
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
	draw_sprite_ext(spr_config_button,0,600,320,2,2,0,color_patern[5],1)

	}
}


