// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_scaredjump(){
	sprite_index = spr_player_scaredjump
	hsp = move * movespeed
	if vsp < 20
		vsp += grav
	if move != 0 {
		if movespeed < 6
			movespeed += 0.25
		xscale = move
	}
	else
		movespeed = 0
	image_speed = 0.20
	if grounded {
		state = 0
		movespeed = 0
	}
}