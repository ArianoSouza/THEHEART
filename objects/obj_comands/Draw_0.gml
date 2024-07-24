
draw_self()

if timer_minutes < 10{
draw_text_transformed(360,80,"0"+string(timer_minutes)+":"+show_time_seconds,1,1,0)
}
else{
draw_text_transformed(360,80,string(timer_minutes)+":"+show_time_seconds,1,1,0)
}

if global.bpm > 200{
	draw_text_transformed(100,90,"Tap SPACE to ease the heart",1,1,0)
}




draw_text_transformed(540,255,global.bpm,2,2,0)

if global.game_over = true{
	draw_text_transformed(220,180,"RITUAL ADIADO",2,2,0)
}





