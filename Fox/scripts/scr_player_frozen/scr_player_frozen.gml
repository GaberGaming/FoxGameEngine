// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_frozen(){
	sprite_index = spr_player_frozen
	if vsp < 20
		vsp += grav
	if !audio_is_playing(sfx_dash)
		sound(sfx_dash)
	if frozenhit = 0
	{
		hsp = xscale * movespeed
		if sign(drawAngle) = -xscale
		{
			movespeed += 0.1	
		}
		if sign(drawAngle) = xscale
		{
			movespeed -= 0.1
			if movespeed = 0
				xscale *= -1
		}
		if place_meeting(x+xscale,y,obj_solid) or place_meeting(x+xscale,y,obj_platform)
		{
			vsp = -11
			frozenhit = 1
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
			sound(sfx_bump)
		}
		if grounded and (k_jump_press || jumpbuffer > 0)
		{
			vsp = -9
			if !playedjump
				sound(sfx_jump)
			playedjump = 1
			jumpbuffer = 0
		}
	}
	if frozenhit = 1
	{
		hsp = 0	
		if place_meeting(x,y+1,obj_solid) or place_meeting(x+xscale,y,obj_platform)
		{
			state = 3
			vsp = -7
			movespeed = 0
			frozenhit = 0
			sound(sfx_bump)
		}
		if place_meeting(x,y+1,obj_slope)
		{
			xscale = -xscale
			movespeed = 12
			frozenhit = 0
			sound(sfx_bump)
			sound(sfx_dash)
		}
	}
}