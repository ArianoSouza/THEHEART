if global.game_over = true{
instance_destroy(self)
}

if place_meeting(x,y,obj_heart){
global.bpm +=10
speed = -5
}

if x > 860 or x < -200 or y < - 200 or y > 540{
instance_destroy(self)
}