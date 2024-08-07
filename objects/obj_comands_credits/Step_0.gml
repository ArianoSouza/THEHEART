timer++
if room  =rEndDemo{
	if timer < 180{
		text_alpha += 0.005
	}
	else if timer >= 180 and timer < 600 {
		text_alpha = 1
	}
	else if timer > 600  {
		text_alpha -= 0.005
	}
	if timer >900{
	room_goto(rMenu)
}
}
else if room = rLogo{
	if timer > 300  {
		room_goto(rMenu)
	}
}


