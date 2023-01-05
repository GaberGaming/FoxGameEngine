// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_thrown(){
	/*
	hsp = image_xscale * movespeed
	sprite_index = spr_hit
	image_speed = 0
	if vsp < 10
		vsp += grav
	if place_meeting(x+image_xscale,y,obj_solid)
		instance_destroy()
	if place_meeting(x,y+1,obj_solid)
		vsp = -3
		*/
	hsp = /*movespeed * image_xscale*/ 0
	sprite_index = spr_hit
	if vsp < 20
		vsp += grav
	if grounded
		instance_destroy()
}