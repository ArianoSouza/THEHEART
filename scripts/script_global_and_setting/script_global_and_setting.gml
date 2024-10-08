window_set_fullscreen(1)
window_set_cursor(cr_none)
global.timer = 0
global.bpm = floor(random_range(60,90))
global.game_over = false
global.tool_active = "nd"
global.game_v = "ALPHA 0.1.1"
global.volume_general = 1


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

ini_open("save_data.sav")

global.actives = [	{active:false,first_death:ini_read_real("data_enemies","see_hand",0)}, //demonic_hand
					{active:false,first_death:ini_read_real("data_enemies","see_eyes",0)}, //eyes
					{active:false,first_death:ini_read_real("data_enemies","see_simbles",0)}, //simbles
					{active:false,first_death:ini_read_real("data_enemies","see_spear",0)}, //sacred_spear
					{active:false,first_death:ini_read_real("data_enemies","see_ghost",0)}, //ghost
					{active:false,first_death:ini_read_real("data_enemies","see_invisible",0)}, //invisible
					{active:false,first_death:ini_read_real("data_enemies","see_behind",0)}, //behind_you
					{active:false,first_death:ini_read_real("data_enemies","see_smn",0)}, //say_my_name
					{active:false,first_death:ini_read_real("data_enemies","see_doppler",0)}, //doppleganger
					{active:false,first_death:false}  //earthquake
					]
					
global.tool_status =[
	{level:ini_read_real("data_game","level_thorn",1), value:ini_read_real("data_game","cost_thorn",50)},  //thorn
	{level:ini_read_real("data_game","level_bandage",1), value:ini_read_real("data_game","cost_bandage",50)},  //bandage
	{level:ini_read_real("data_game","level_knife",1), value:ini_read_real("data_game","cost_knife",50)}   //knife
]
global.spirit = ini_read_real("data_player","spirit_value",50)
global.volume_general = ini_read_real("data_game","volume",1)

ini_close()
					
global.timers_tools = [	{default_time: 420}, // thorn
						{default_time: 360}, // bandage 
						{default_time: 300}, // knife
]

global.font_SMN = font_add_sprite_ext(spr_font_say_my_name,"abcdefghijklmnopqrstuvwxyz_",true,1)





global.enemies_desc = [	{description:"a hand of a demon that despites our sacred god. the creature have more than 1000 hands to compansate for the weak body that was given, so weak that is amoust rotten"}, //demonic_hand
					{description:"eyes of a unknow entity. it seems that this entity is trying to watch the ritual, but the act disturbs it. little is know about this entity, but it not seem harmless"},	//eyes
					{description:"another cult is trying to disturb the ritual. They seem to worship the same god as us, but see the birth as a profane act. The simbles represent a ritual to disturb the heart"}, //simbles
					{description:"another god who rivalizes with ours sent his minions to try to prevent his birth. The sacred spear is a magic spear that can hurt the skin of any creature"}, //sacred_spear
					{description:"Some spirits are atracted by the power of the ritual, and tha's seams to distub the ritual"}, //ghost
					{description:"a enormous creature that uses the invisibility to disturb the ritua"}, //invisible
					{description:"some entities like to play with us"}, //behind_you
					{description:"a very powerfull entity that uses his many names as a way to dement humans minds. The only way to suprass it is to get the name correctly. The table shows what we found."}, //say_my_name
					{description:"a creature that appers from nowere ans tricks you to atack when we are unaware"}, //doppleganger
					{description:"some entities is so poweful that only the they presence makes the earth shake"}   //earthquake
					]