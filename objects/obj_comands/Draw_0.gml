
draw_self()
draw_set_font(fMenu)

if timer_minutes < 10{
draw_text_transformed_color(360,80,"0"+string(timer_minutes)+":"+show_time_seconds,1,1,0,c_white,c_white,c_red,c_red,1)
}
else{
draw_text_transformed_color(360,80,string(timer_minutes)+":"+show_time_seconds,1,1,0,c_white,c_white,c_red,c_red,1)
}

if global.bpm > 200{
	draw_text_transformed(100,90,"Tap SPACE to ease the heart",1,1,0)
}




draw_text_transformed(540,255,global.bpm,2,2,0)

if global.game_over = true{
	draw_text_transformed(220,180,"RITUAL ADIADO",2,2,0)
}

draw_text( 400,200,global.actives[1].active)
draw_text( 400,210,global.actives[2].active)
draw_text( 400,220,global.actives[3].active)
draw_text( 400,240,global.actives[4].active)
draw_text( 400,250,global.actives[5].active)
draw_text( 400,260,global.actives[6].active)
draw_text( 400,270,global.actives[7].active)
draw_text( 400,280,global.actives[8].active)





