// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_dashpad(){
	rgb = make_color_rgb(0,150,0)
	if !audio_is_playing(sfx_fall)
		sound(sfx_fall)
	rgb = make_color_rgb(150,150,255)
	hsp = movespeed * xscale
	//movespeed = 3
	sprite_index = spr_player_bump
	image_speed = 0.35
	if vsp < 20
		vsp += grav
	//if floor(image_index) = image_number - 1
	if grounded {
		state = 3
		vsp = -9
		movespeed = 3
		image_index = 0
		sound(sfx_bump)
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
				instance_create_depth(x,y,depth,obj_hiteffect)
	}
		
}