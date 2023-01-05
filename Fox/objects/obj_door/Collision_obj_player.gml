with obj_player
{
	if grounded
	{
		if k_up and global.haskey = 1 and state != 999999 and state != 2
		{
			if other.special = 0 {
				if instance_exists(obj_coinget)
				{
				instance_destroy(obj_coinget)
				}
				state = 999999
				other.opened = 1
				other.alarm[0] = 60
				other.image_index = 1
				global.targetrm = other.targetrm
				obj_camera.lvlscore = global.collect
				obj_camera.lvlcombo = global.combo
				sound(sfx_win)
				sound(sfx_door)
			}
			else {
				other.opened = 1
				other.image_index = 1
				room_goto(other.targetRoom)
				//sound(sfx_door)	
				global.haskey = 0
			}
		}
	}
}
