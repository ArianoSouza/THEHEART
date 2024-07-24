timer++


 if timer >= 100 and timer <200 {
	divider = 72
}
else if timer >= 200 and timer <300  {
	divider = 54
}
else if timer >= 300 and timer <400{
	divider = 36
}
else if timer >= 400 and timer <500{
	divider = 18
}
else if timer >= 500 and timer <600{
	divider = 9
}
else if timer >= 600{
	instance_destroy(self)
}

if timer%divider = 0{
		image_alpha = 0.1
	}
	else{
		image_alpha = 1
	}