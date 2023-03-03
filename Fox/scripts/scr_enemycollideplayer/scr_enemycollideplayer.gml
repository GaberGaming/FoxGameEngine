// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemycollideplayer(){
	if place_meeting(x,y,obj_player) and (obj_player.state = 1 or obj_player.state = 5 or obj_player.state = 9 or obj_player.state = 11 or obj_player.state = 14) and (state = 0 or state = 4)/* and state != 1*/ 
	{
		hitX = x
		hitY = y
		stunbuffer = 7
		state = 2
		with obj_player
		{
			storedstate = state
			storedimgspeed = image_speed
			if state != 9
			{
				hitX = x
				hitY = y
				hitbuffer = 7
				state = 2
				baddieid = other.id
				//camera_set_view_size(view_camera[0],900,500)
				//sprite_index = choose(spr_player_attackhit,spr_player_attackhit2)
				image_index = random_range(0,3)
				global.combo += 1
				stuncombo += 1
				combostop = 30
				combotime = 120
				image_index = random_range(0,3)
				chainsaw = 0
			}
			else
			{
				hitX = x
				hitY = y
				hitbuffer = 3
				state = 2
				baddieid = other.id
				//camera_set_view_size(view_camera[0],900,500)
				//sprite_index = choose(spr_player_attackhit,spr_player_attackhit2)
				//image_index = random_range(0,3)
				global.combo += 1
				stuncombo += 1
				combostop = 30
				combotime = 120
				//image_index = random_range(0,3)
				chainsaw = 1
			}
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
			instance_create_depth(x,y,depth,obj_hiteffect)
		}
		instance_create_depth(x,y,depth+1,obj_hiteffect)
		sound(sfx_enemyhit)
		image_yscale -= 0.7
	}
	if (place_meeting(x,y,obj_player) and obj_player.state != 1 and obj_player.state != 2 and obj_player.state != 3 and obj_player.state != 5 and obj_player.state != 9 and obj_player.state != 11 and obj_player.state != 10 and obj_player.state != 14) and (state = 0 or state = 4)
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
		}
	}
	if (place_meeting(x,y,obj_player) and (obj_player.state = 11 or obj_player.state = 1 or obj_player.state = 14) and state = 1)
	{
		instance_destroy()
		with obj_player
		{
			global.combo += 1
			stuncombo += 1
			combostop = 30
			combotime = 120
			hitX = x
			hitY = y
			hitbuffer = 11
			state = 2
			//camera_set_view_size(view_camera[0],900,500)
			//sprite_index = choose(spr_player_attackhit,spr_player_attackhit2)
			image_index = random_range(0,3)
			image_index = random_range(0,3)
			chainsaw = 0
			if global.combo > 0
				combotime -= 15
		}
		sound(sfx_enemyhit)
		sound(sfx_punch)
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
			instance_create_depth(x,y,depth,obj_hiteffect)
			with obj_camera
			{
		zoom_level = clamp(zoom_level + (-2), 0, 2);
			}
	}
	if (place_meeting(x,y,obj_player) and (obj_player.state = 10))
	{
		instance_destroy()
		with obj_player
		{
			global.combo += 1
			stuncombo += 1
			combostop = 30
			combotime = 120
			hitX = x
			hitY = y
			hitbuffer = 11
			state = 2
			//camera_set_view_size(view_camera[0],900,500)
			//sprite_index = choose(spr_player_attackhit,spr_player_attackhit2)
			image_index = random_range(0,3)
			image_index = random_range(0,3)
			chainsaw = 0
		}
		sound(sfx_enemyhit)
		sound(sfx_punch)
			repeat 6
				instance_create_depth(x,y,depth,obj_hitstar)
			instance_create_depth(x,y,depth,obj_hiteffect)
			with obj_camera
			{
		zoom_level = clamp(zoom_level + (-2), 0, 2);
			}
	}
}