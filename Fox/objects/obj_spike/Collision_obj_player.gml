if obj_player.state != 1 and obj_player.state != 2 and obj_player.state != 3 and obj_player.state != 5 and obj_player.state != 9 and obj_player.state != 11 and obj_player.state != 10
{
with obj_player
		{
			if invframes < 0
			{
			frames = 3
			invframes = 20
				vsp = -17
			//xscale *= -1
			state = 13
			movespeed = 12
			if !audio_is_playing(sfx_hurt)
			sound(sfx_hurt)
			if global.collect > 0
			{
			repeat 10
				instance_create_depth(x,y,depth,obj_collectloss)	
			global.collect -= 10
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
			instance_create_depth(x,y,depth,obj_hiteffect)
			}
			}
			if global.combo > 0
				combotime -= 15
		}
}