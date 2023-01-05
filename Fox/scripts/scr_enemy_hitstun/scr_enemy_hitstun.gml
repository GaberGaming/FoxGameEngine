// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_hitstun(){
	stunbuffer--
	x = hitX
	y = hitY
	sprite_index = spr_hit
	if obj_player.attackstyle = "OLD"
	{
		if stunbuffer < 0
		{
			y -= 1
			vsp = -14
			movespeed = 12
			image_xscale = obj_player.xscale
			state = 1
		}
	}
	else
	{
		if stunbuffer < 0
		{
			/*image_xscale = obj_player.xscale
			instance_destroy()*/
			y -= 1
			vsp = -14
			movespeed = 12
			image_xscale = obj_player.xscale
			state = 1
		}
	}
}