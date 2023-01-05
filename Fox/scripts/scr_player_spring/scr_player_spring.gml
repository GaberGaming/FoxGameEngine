// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_spring(){
	sprite_index = spr_player_hurt
	hsp = Approach( hsp, move * 5, 0.5)
	if vsp > -15
		vsp -= 1
	if !place_meeting(x,y,obj_spring)
	{
		movespeed = hsp
		state = 0
		vsp = -11
	}
	if vsp < 15
	{
		if vsp < 5
			image_speed = 0.35
		else
			image_speed = 0.45
	}
	else
		image_speed = 0.65
	if place_meeting(x,y-1,obj_solid)
		vsp = 10
	if place_meeting(x-1,y,obj_solid)
	{
		hsp = 10
	}
	if place_meeting(x+1,y,obj_solid)
	{
		hsp = -10
	}
	if k_attack
	{
			state = 1
			image_index = 0
			airattack = 1
			movespeed = 6
			vsp = -7
			if !instance_exists(obj_dasheffect)
			{
				with instance_create_depth(x,y,depth+1,obj_dasheffect)
				{
					image_xscale = other.xscale
					image_index = 0
				}
			}	
	}
}