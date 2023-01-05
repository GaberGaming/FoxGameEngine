// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_punch(){
	rgb = make_color_rgb(255,150,255)
	sprite_index = spr_player_punch
	hsp = move * movespeed
	if movespeed < 3
	movespeed = 3
	if vsp < 20
		vsp += grav
	if move != 0
	{
	if movespeed < 3
	movespeed = 3	
	xscale = move
	}
	else
		movespeed = 0
	if grounded
	{
		state = 0
		movespeed = 0
	}
	if  floor(image_index) = image_number - 1
		image_speed = 0
	else
		image_speed = 0.6
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