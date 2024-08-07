draw_self()

	draw_circle_color(320,180,600,c_black,c_black,0)
	draw_set_font(fHud)
	draw_set_halign(fa_center)
	draw_text_transformed(320,60,floor(timer/60),2,2,0)
	draw_set_font(global.font_SMN)
	draw_text_transformed(320,140,"say my name",2,2,0)
	draw_text_transformed(320,180,name,2,2,0)
	draw_text_ext_transformed(320,215,tapped_name,50,2000,2,2,0)
	draw_text_transformed(320,195,tap_name,1.6,1.6,0)
	draw_set_halign(fa_left)

	
	

