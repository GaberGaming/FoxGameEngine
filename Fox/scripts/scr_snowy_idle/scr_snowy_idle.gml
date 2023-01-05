// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_snowy_idle(){
	sprite_index = spr_idle
	hsp = 0
	if place_meeting(x+100,y,obj_player) or place_meeting(x-100,y,obj_player)
	{
		state = 4
		vsp = -14
		image_xscale = sign(obj_player.x)
		sound(sfx_jump)
		playedjump = 1
		sound(sfx_dash)
	}
}