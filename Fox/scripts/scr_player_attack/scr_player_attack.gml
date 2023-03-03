// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_attack(){
	rgb = make_color_rgb(150,150,255)
	if !audio_is_playing(sfx_walk) and grounded
		sound(sfx_walk)
	if !grounded and audio_is_playing(sfx_walk)
		audio_stop_sound(sfx_walk)
	if !instance_exists(obj_speedlines)
		instance_create_depth(x,y,depth,obj_speedlines)
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
	}
		if sprite_index != spr_player_shoulderbash and sprite_index != spr_player_shoulderbashcharge
			sprite_index = spr_player_shoulderbash
	image_speed = 0.35
	hsp = movespeed * xscale
	if move = -xscale and sprite_index != spr_player_shoulderbashcharge
		state = 0
	if grounded
	{
			if floor(image_index) < 9
			{
				if movespeed < 12 {
						movespeed += 0.25
				}
			}
			else
				if movespeed > 0
					movespeed -= 0.1
	}
	else {
		if movespeed < 12
			movespeed = 12
	}
	if floor(image_index) = image_number - 1 and sprite_index != spr_player_shoulderbashcharge
		state = 0
	if vsp < 20
		vsp += grav
	if grounded and (airattack = 1 or sprite_index = spr_player_shoulderbashcharge) {
			state = 0
	}
	if grounded and k_jump_press
	{
		airattack = 1
		vsp = -11
		image_index = 0
		sound(sfx_jump)
	}
	if place_meeting(x+xscale,y,obj_solid) and !place_meeting(x+xscale,y,obj_greg)
	{
		state = 3
		vsp = -9
		movespeed = movespeed - (movespeed / 4)
		image_index = 0
		sound(sfx_bump)
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
				instance_create_depth(x,y,depth,obj_hiteffect)
	}
}