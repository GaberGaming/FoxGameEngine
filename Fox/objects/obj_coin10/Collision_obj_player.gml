instance_destroy()
global.collect += 100
instance_create_depth(x,y,depth,obj_10)
with obj_player
{
	if global.combo > 0
	{
		if combotime < 120
			combotime += 15
		if combostop < 15
			combostop = 15
	}
}
global.targetwidth = 900
global.targetheight = 500
sound(sfx_collected)