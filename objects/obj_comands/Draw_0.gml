

draw_self()
draw_set_font(fMenu)
draw_text_ext_transformed_color(560,340,global.game_v,15,100,0.8,0.8,0,c_white,c_white,c_white,c_white,0.5)
draw_set_halign(fa_center)


if fade_fase = true{
draw_set_alpha(fade_alpha)
draw_rectangle_color(0,0,640,360,c_black,c_black,c_black,c_black,0)
draw_set_alpha(1)
}
else{
	draw_set_alpha(1)
	if global.game_over = true{
	if timer_end_game < 180{
		draw_rectangle_color(0,0,640,360,c_black,c_black,c_black,c_black,0)
		draw_text_transformed_color(320,120,"RITUALE DILATA",3,4,0,c_white,c_white,c_red,c_red,1)
	}
	exit
	}

	if timer_minutes < 10{
	draw_text_transformed_color(320,60,"0"+string(timer_minutes)+":"+show_time_seconds,2,2,0,c_white,c_white,c_red,c_red,1)
	}
	else{
	draw_text_transformed_color(320,60,string(timer_minutes)+":"+show_time_seconds,2,2,0,c_white,c_white,c_red,c_red,1)
	}

	if global.bpm > 200{
		draw_text_ext_transformed(190,150,"Tap SPACE to ease the heart",20,120,1,1,0)
	}

	if global.bpm < 50 {
		draw_text_ext_transformed(190,150,"Tap C to charge the heart",20,120,1,1,0)
	}



	draw_text_transformed(460,240,global.bpm,2,2,0)
}







