// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_hurt(){
	rgb = make_color_rgb(150,150,255)
	hsp = movespeed * -xscale
	//movespeed = 3
	sprite_index = spr_player_hurt
	image_speed = 0.1
	if vsp < 20
		vsp += grav
	//if floor(image_index) = image_number - 1
	if place_meeting(x-xscale,y,obj_solid)
		movespeed = 0
	if grounded and frames < 0
	{
		state = 0
		movespeed = 0
	}
		
}