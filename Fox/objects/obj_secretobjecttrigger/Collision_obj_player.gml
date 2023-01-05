with obj_secretobject
{
	if ds_list_find_index(global.save, id) = -1
	{
		instance_create_depth(x,y,depth,obj_poof)
		ds_list_add(global.save, id)
		instance_create_depth(x,y,depth - 1,content)
		instance_create_depth(x,y,depth - 2,obj_poof)
	}
}
