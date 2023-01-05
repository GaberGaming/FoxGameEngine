// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_attackSpin(){
	rgb = make_color_rgb(150,150,255)
	if !audio_is_playing(sfx_walk)
		sound(sfx_walk)
	if !audio_is_playing(sfx_dashing)
		sound(sfx_dashing)
	if grounded
	{
		if !instance_exists(obj_walkdust)
		{
			with instance_create_depth(x,y,depth-1,obj_walkdust)
			{
				image_xscale = other.xscale
				image_index = 0
			}
		}
		vsp = -7
	}
	if vsp < 20
		vsp += grav
	sprite_index = spr_player_kickspin
	image_speed = 0.35
	hsp = movespeed * xscale
	if floor(image_index) = image_number - 1
		state = 0
	if place_meeting(x,y+1,obj_solid) or place_meeting(x,y+1,obj_slope)
	{
		if floor(image_index) < 9
		{
			if movespeed < 12
			movespeed += 0.25
		}
		else
			if movespeed > 0
				movespeed -= 0.1
	}
}