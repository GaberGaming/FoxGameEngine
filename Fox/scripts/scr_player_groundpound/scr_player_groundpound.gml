// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_groundpound(){
	hsp = movespeed * move
	sprite_index = spr_player_slam
	image_speed = 0.35
	if vsp < 40
	{
		vsp += (grav * 2)
		//groundpoundsmash += grav * 2
	}
	if floor(image_index) = image_number - 1
		image_index = 6
	movespeed = 3
	if move != 0
		xscale = move
	if grounded
	{
		if !place_meeting(x,y+1,obj_breakablesecret)
		{
			if !place_meeting(x,y+1,obj_breakable) {
				//if !place_meeting(x,y+1,obj_slope)
				//{
					state = 3
					vsp = -11
					movespeed = 0
					image_index = 0
					sound(sfx_bump)
						repeat 6
							instance_create_depth(x,y,depth,obj_hitstar)
							instance_create_depth(x,y,depth,obj_hiteffect)
				//}
				//else
				//{
				//	state  = 10
				//	movespeed = 16
				//	xscale = -sign(drawAngle)
				//}
			}
			//vsp = -(groundpoundsmash / 1.5)
		}
	}
	//if !instance_exists(obj_groundpoundeffect)
	//	instance_create_depth(x,y,depth-1,obj_groundpoundeffect)
}