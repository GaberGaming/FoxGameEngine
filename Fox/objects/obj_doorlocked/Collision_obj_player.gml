with obj_player
{
	if grounded
	{
		if k_up and global.haskey = 1 and state != 999999
		{
			other.opened = 1
			other.alarm[0] = 15
			obj_player.targetDoor = targetDoor
			obj_player.hallwayxscale = 0
			obj_player.state = 8
		}
	}
}
