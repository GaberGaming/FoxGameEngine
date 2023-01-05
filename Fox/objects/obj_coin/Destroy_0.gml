if ds_list_find_index(global.save, id) = -1
{
	instance_create_depth(x,y,depth,obj_poof)
	ds_list_add(global.save, id)
}
