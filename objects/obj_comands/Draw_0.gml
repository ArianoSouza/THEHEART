if global.game_over = true{
draw_text_transformed(220,180,"RITUAL ADIADO",2,2,0)
draw_text_transformed(100,180,timer_end_game,2,2,0)
exit
}

draw_self()
draw_set_font(fMenu)
draw_set_halign(fa_center)

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







