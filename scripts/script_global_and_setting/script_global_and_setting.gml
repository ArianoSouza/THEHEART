window_set_fullscreen(1)
window_set_cursor(cr_none)
global.timer = 0
global.bpm = floor(random_range(60,90))
global.game_over = false
global.tool_active = "nd"


global.spaw_locations = [
		{
			my_x: 32,
			my_y: 416
		},
		{
			my_x: -64,
			my_y: 320
		},
		{
			my_x: -64,
			my_y: 224
		},
		{
			my_x: -64,
			my_y: 128
		},
		{
			my_x: -64,
			my_y: 32
		},
		{
			my_x: 64,
			my_y: -64
		},
		{
			my_x: 160,
			my_y: -64
		},
		{
			my_x: 288,
			my_y: -64
		},
		{
			my_x: 416,
			my_y: -64
		},
		{
			my_x: 544,
			my_y: -64
		},
		{
			my_x: 704,
			my_y: 0
		},
		{
			my_x: 704,
			my_y: 96
		},
		{
			my_x: 704,
			my_y: 160
		},
		{
			my_x: 704,
			my_y: 224
		},
		{
			my_x: 704,
			my_y: 320
		},
		{
			my_x: 608,
			my_y: 416
		},
		{
			my_x: 512,
			my_y: 416
		},
		{
			my_x: 448,
			my_y: 416
		},
		{
			my_x: 384,
			my_y: 416
		},
		{
			my_x: 288,
			my_y: 416
		},
		{
			my_x: 192,
			my_y: 416
		},
		{
			my_x: 92,
			my_y: 416
		},
]