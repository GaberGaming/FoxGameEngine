// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_ramp(){
	hsp = image_xscale * movespeed
	sprite_index = spr_player_dash
	if place_meeting(x,y+1,obj_ramp)
	{
		movespeed = 6
		y -= 1
	}
	else
	{
		movespeed = 14
		if jumped = 0
		{
			jumped = 1
			vsp = -20
		}
	}
	if vsp < 20
		vsp += grav
	if place_meeting(x,y+1,obj_solid)
	{
		state = 5
		sprite_index = spr_player_dashstop
		image_index = 0
	}
	
}