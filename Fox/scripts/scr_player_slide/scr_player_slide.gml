// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_slide(){
	if floor(image_index) = image_number - 1
	image_speed = 0
	else
	image_speed = 0.45
	if grounded
	sprite_index = spr_player_slide
	else
	if sprite_index != spr_player_slidejump
	{
	sprite_index = spr_player_slidejump
	image_index = 4
	}
	if sprite_index = spr_player_slidejump
	{
		if k_down
		{
			if vsp < 10
				vsp = 10
		}
		if k_up or k_attack
		{
			state = 11
			vsp = -9
		}
	}
	hsp = xscale * movespeed
	if !k_down
	if vsp < 20
		vsp += grav
	else
	if vsp < 20
		vsp += grav * 2
	if movespeed > 0 and !place_meeting(x, y - 10, obj_solid) and (place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope))
		movespeed -= 0.25
	if place_meeting(x+xscale,y,obj_solid)
	{
		if place_meeting(x,y+1,obj_solid)
		{
			xscale *= -1
			sound(sfx_bump)
		}
		else
		{
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
				instance_create_depth(x,y,depth,obj_hiteffect)
			state = 3
			vsp = -2.5
			sound(sfx_bump)
		}
	}
	if movespeed = 0 or movespeed < 0
	{
		state = 0
		movespeed = 0
	}
	if grounded and k_jump_press
	{
		vsp = -11	
	}
}