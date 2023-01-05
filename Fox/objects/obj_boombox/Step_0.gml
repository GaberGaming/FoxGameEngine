if vsp < 20
	vsp += 0.5
if place_meeting(x,y+1,obj_solid)
	vsp = 0
buffer--
if buffer < 0
{
	buffer = 15	
	with instance_create_depth(x - random_range(-48,48),y - 7,depth,obj_10)
	{
		sprite_index = spr_notes
		image_index = random_range(0,3)
	}
}
y+=vsp