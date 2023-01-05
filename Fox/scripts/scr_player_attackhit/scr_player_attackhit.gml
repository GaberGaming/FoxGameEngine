// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_attackhit(){
	with obj_camera
		zoom_level = clamp(zoom_level + (-1), 0.5, 2);
	image_speed = 0
	hsp = 0
	vsp = 0
	x = hitX - random_range(-4,4)
	y = hitY - random_range(-4,4)
	//if sprite_index != spr_player_hitstun and sprite_index != spr_player_kick
	//sprite_index = choose(spr_player_hitstun,spr_player_kick)
	hitbuffer--
	if hitbuffer < 0
	{
		//if global.hardmode = 0
		//{
		if attackstyle != "OLD"
		{
			image_speed = storedimgspeed
			/*state = 3
			vsp = -5
			movespeed = movespeed / 2*/
			state = storedstate
			x = hitX
			y = hitY
			if !place_meeting(x,y+1,obj_solid) and !place_meeting(x,y+1,obj_slope)
				vsp = -2.5
			if storedstate = 3
				vsp = -11
		}
		else
		{
			state = 0
			x = hitX
			y = hitY
			with baddieid
			{
				if other.storedstate = 1
				movespeed = 2
				else
				movespeed = 0
				image_xscale = other.xscale
			}
		}
		//}
		//global.targetwidth = 960
		//global.targetheight = 540
		stuncombo = 0
		with obj_camera
			zoom_level = 1
	}
	/*if k_attack
	{
		hitbuffer += (11 - stuncombo)
		with baddieid
			stunbuffer += 11
		global.combo += 1
		stuncombo += 1
		combostop = 30
		combotime = 120
		image_index = random_range(0,3)
	}*/
}