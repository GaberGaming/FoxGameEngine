buffer--
if buffer < 0
{
	image_alpha += 0.015	
}
if image_alpha > 1
{
	room_goto(yousuckroom)
	obj_player.state = 0
	obj_player.targetDoor = 1
}
