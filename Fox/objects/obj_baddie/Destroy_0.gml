if ds_list_find_index(global.save, id) = -1
{
ds_list_add(global.save, id)
with instance_create_depth(x,y,depth,obj_baddieded)
{
	sprite_index = other.spr_ded
	hsp = 12 * other.image_xscale
	depth = -998
	image_xscale = other.image_xscale
	image_angle = random_range(0,180)
}
//instance_create_depth(x,y,depth+1,obj_hiteffect)
instance_create_depth(x,y,depth,obj_10)
global.collect += 10
}
