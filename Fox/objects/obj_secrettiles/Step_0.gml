var target = place_meeting(x,y,obj_player)
if target
	visiblelayer = 0
else
	visiblelayer = 1
var layerid = layer_get_id("Tile_Secret")
layer_set_visible("Tile_Secret",visiblelayer)
//layer_
if visiblelayer = 0
	layeralpha = 1
else
	layeralpha = 0