
	if ds_list_find_index(global.save, id) = -1
	{
	instance_create_depth(x,y,depth,obj_poof)
	ds_list_add(global.save, id)
	global.targetwidth = 900
	global.targetheight = 500
	sound(sfx_break)
	}
	var lay_id = layer_get_id("Tiles_Secret");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, x, y);
	data = tile_set_empty(data)
	tilemap_set_at_pixel(map_id, data, x, y);
	var lay_id2 = layer_get_id("Tiles_1");
	var map_id2 = layer_tilemap_get_id(lay_id2);
	var data2 = tilemap_get_at_pixel(map_id2, x, y);
	data2 = tile_set_empty(data2)
	tilemap_set_at_pixel(map_id2, data2, x, y);
