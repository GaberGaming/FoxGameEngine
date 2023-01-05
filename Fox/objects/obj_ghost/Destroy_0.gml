/*instance_create_depth((room_width - (room_width - (random_range(960,1240)))),(room_height - (room_height - (random_range(960,1240)))),depth,obj_ghost)
with instance_create_depth(x,y,depth,obj_baddieded)
{
	sprite_index = spr_ghost_dead
	hsp = 4 * -other.image_xscale
	depth = -998
	image_xscale = other.image_xscale
	image_angle = random_range(0,180)
	image_alpha = other.image_alpha
}