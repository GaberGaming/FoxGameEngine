if obj_player.state != 2 and obj_player.state != 1 and obj_player.state != 5 and obj_player.state != 11 and obj_player.state != 14 and obj_player.momentum != 1
	buffer--
if buffer < 0
	instance_destroy()