switch state
{
	case 0:
		x = (camera_get_view_x(view_camera[0]) + 70)
		y = obj_player.y - kek_y
		if kek_y > 10
			kek_ytarget = -0.1
		if kek_y < -10
			kek_ytarget = 0.1
		kek_y += kek_ytarget
		attackbuffer--
		hsp = 0
		if attackbuffer < 0
		{
			attackbuffer = random_range(60,120)
			state = 1
		}
		visible = 1
	break
	case 1:
		x+=hsp
		if hsp < 24
		hsp += 0.5
		if (place_meeting(x,y,obj_player) and obj_player.state != 1 and obj_player.state != 11 and state != 10)
		{
			with obj_player
			{
				if invframes < 0
				{
				frames = 3
				invframes = 20
					vsp = -11
				//xscale *= -1
				state = 3
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
		else if place_meeting(x,y,obj_player)
		{
			instance_create_depth(x,y,depth,obj_poof)
			sound(sfx_punch)
			sound(sfx_enemyhit)
			state = 0
			with obj_player
			{
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
		}
		visible = 1
	break
}
if obj_player.state = 999999
	instance_destroy()