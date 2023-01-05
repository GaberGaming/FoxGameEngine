// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_dash(){
	hsp = movespeed * xscale
	move = k_left + k_right
	if movespeed < 0 and grounded
		movespeed = 0
	image_speed = 0.35
	if vsp < 20
		vsp += grav
	if sprite_index != spr_player_dashstop
	{
		if movespeed < 10
			movespeed += 0.1
		sprite_index = spr_player_dash
	}
	if grounded and sprite_index != spr_player_dashstop
	{
		if move = -xscale
		{
			sprite_index = spr_player_dashstop
			xscale = move
			image_index = 0
		}
		if !k_run
		{
			runstop = 1
			image_index = 0
			sprite_index = spr_player_dashstop
		}
	}
	if sprite_index = spr_player_dashstop
	{
		movespeed -= 0.5
		if floor(image_index) = image_number - 1
		{
			if runstop = 0
				sprite_index = spr_player_dash
			else
				state = 0
		}
	}
	if grounded and (k_jump_press || jumpbuffer > 0)
	{
		vsp = -11
		jumpbuffer = 0	
	}
	if place_meeting(x+xscale,y,obj_solid)
	{
		state = 3
		vsp = -5
		movespeed = movespeed / 2
		image_index = 0
	}
}