// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_levelend(){
		sprite_index = spr_player_victory
		//image_speed = 0
		hsp = 0
		vsp = 0
		movespeed = 0
		/*endbuffer--
		if endbuffer < 0
		{
			if vsp > -10
				vsp -= 0.5
		}
		else
			vsp = 0
		y += vsp
		*/
		image_speed = 0.35
}