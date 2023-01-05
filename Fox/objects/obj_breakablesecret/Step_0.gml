if (place_meeting(x+1,y,obj_player) or place_meeting(x-1,y,obj_player)) and (obj_player.state = 1 or obj_player.state = 5 or obj_player.state = 9 or obj_player.state = 10)
{
	instance_destroy()
	/*with obj_player
	{
		state = 3
		vsp = -5
		image_index = 0
	}*/
	//global.collect += 10
	instance_create_depth(x,y,depth,obj_10)
}
if (place_meeting(x,y-1,obj_player)) and (obj_player.state = 7)
{
	instance_destroy()
	/*with obj_player
	{
		state = 3
		vsp = -5
		image_index = 0
	}*/
	//global.collect += 10
	instance_create_depth(x,y,depth,obj_10)
}