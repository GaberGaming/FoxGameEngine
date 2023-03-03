if obj_player.state = 1 and platformid = -1 {
	with instance_create_depth(x,y,depth-1,obj_platform) {
		image_xscale = other.image_xscale
		other.platformid = id
	}
}
else if obj_player.state != 1 {
	if platformid != -1 {
		instance_destroy(platformid.id)
		platformid = -1
	}
}