if ds_list_find_index(global.save, id) = -1
{
	instance_create_depth(x,y,depth - 1,obj_poof)
	ds_list_add(global.save, id)
	global.targetwidth = 900
	global.targetheight = 500
	sound(sfx_break)
	with instance_create_depth(x,y,depth,obj_baddieded)
	{
		sprite_index = other.sprite_index
		hsp = 12 * obj_player.xscale
		depth = -998
		image_xscale = other.image_xscale
		image_angle = random_range(0,180)
	}
}
