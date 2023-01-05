// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_snowy_jump(){
	sprite_index = spr_jump
	if vsp < 20
		vsp += grav
	hsp = 8 * -image_xscale
	if place_meeting(x,y+1,obj_solid)
	{
		state = 3
		sound(sfx_bump)
	}
}