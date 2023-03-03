// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_normal(){
	hsp = image_xscale * (movespeed + (2 * global.combo))
	image_speed = 0.20
	sprite_index = spr_walk
	if vsp < 10
		vsp += grav
	if place_meeting(x+image_xscale,y,obj_solid) or place_meeting(x+image_xscale,y,obj_hallway)
		image_xscale *= -1
}