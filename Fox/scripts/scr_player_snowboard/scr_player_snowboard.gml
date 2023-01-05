// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_snowboard(){
	rgb = make_color_rgb(0,50,255)
	if !audio_is_playing(sfx_walk)
		sound(sfx_walk)
	hsp = movespeed * xscale
	//movespeed = 3
	if grounded
	sprite_index = spr_player_snowboard
	else
	sprite_index = spr_player_snowboardJump
	image_speed = 0.35
	if vsp < 20
		vsp += grav
	//if floor(image_index) = image_number - 1
	if grounded {
		if (k_jump_press || jumpbuffer > 0) {
			vsp = -11
			image_index = 0
			if !playedjump
				sound(sfx_jump)
			playedjump = 1
			jumpbuffer = 0
	}

	}
		
}