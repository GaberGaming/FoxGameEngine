// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_chainsaw(){
	rgb = make_color_rgb(255,0,0)
	if vsp < 20
		vsp += grav
	image_speed = 0.35
	if sprite_index = spr_player_chainsawstart
	{
		hsp = 0
		movespeed = 0
		if floor(image_index) = image_number - 1
		{
			sprite_index = spr_player_chainsawdash
			image_index = 0
			movespeed = 5
		}
	}
	if sprite_index = spr_player_chainsawdash
	{
			if floor(image_index) = image_number - 1
				state = 0
			hsp = xscale * movespeed
			if movespeed < 12
				movespeed += 0.5
			if place_meeting(x+xscale,y,obj_solid)
			{
				sprite_index = spr_player_chainsawbump
				vsp = -5.5
			}
			if grounded
			{
				if k_jump_press || jumpbuffer > 0
				{
					vsp = -7
					jumpbuffer = 0	
				}
			}
	}
	if sprite_index = spr_player_chainsawbump
	{
		hsp = -xscale * movespeed
		if movespeed > 0 and grounded
			movespeed -= 1
		if movespeed = 0 or movespeed < 0
		{
			state = 0
			movespeed = 0
		}
	}
}