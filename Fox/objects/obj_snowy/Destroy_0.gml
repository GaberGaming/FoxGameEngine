if ds_list_find_index(global.save, id) = -1
{
ds_list_add(global.save, id)
repeat 10	{
with instance_create_depth(x,y,depth,obj_baddieded)
{
	sprite_index = other.spr_ded
	hsp = random_range(-12,12)
	depth = -998
	vsp = random_range(-7,7)
	image_xscale = other.image_xscale
	image_angle = random_range(0,180)
}
}
//instance_create_depth(x,y,depth+1,obj_hiteffect)
instance_create_depth(x,y,depth,obj_10)
global.collect += 10
}
