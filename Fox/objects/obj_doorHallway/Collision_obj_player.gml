	if obj_player.k_up2 and obj_player.state != 8 and obj_player.state != 2
	{
		alarm[0] = 15
		obj_player.targetDoor = targetDoor
		obj_player.hallwayxscale = 0
		obj_player.hallwayyscale = 0
		obj_player.state = 8
		sound(sfx_door)
	}
