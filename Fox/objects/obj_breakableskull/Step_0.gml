if (place_meeting(x,y,obj_ghost) and obj_ghost.state = 1)
{
	instance_destroy()
	/*with obj_player
	{
		state = 3
		vsp = -5
		image_index = 0
	}*/
	global.collect += 10
	instance_create_depth(x,y,depth,obj_10)
}
