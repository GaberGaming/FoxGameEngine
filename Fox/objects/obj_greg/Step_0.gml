scr_collide()
if vsp < 20
	vsp += grav
if hp = 0 or hp < 0
	instance_destroy()
hsp = movespeed * image_xscale
if movespeed > 0
	movespeed -= 0.1
if movespeed < 0
	movespeed = 0
if movespeed > 0 and (place_meeting((x+image_xscale),y,obj_solid)) {
	sprite_index = spr_greg_touchwall	
}
else
	sprite_index = spr_greg
if place_meeting(x+1,y,obj_player) or place_meeting(x-1,y,obj_player) {
if obj_player.state = 1 {
	hp -= 25
	vsp = -7
	image_xscale = obj_player.xscale
	movespeed = 12
	with obj_player {
			storedstate = 0
			storedimgspeed = image_speed
			hitX = x
			hitY = y
			hitbuffer = 7
			state = 2
			image_index = random_range(0,3)
			combostop = 30
			combotime = 120
		}
}	
}