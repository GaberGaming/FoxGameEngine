function scr_collide(){
	if place_meeting(x + hsp,y,obj_solid)
	{
		while !place_meeting(x+sign(hsp),y,obj_solid)
			x += sign(hsp)
		hsp = 0
	}
	x += hsp
	
	if place_meeting(x,y + vsp,obj_solid)
	{
		while place_meeting(x,y,obj_solid)
			y -= sign(vsp)
		while !place_meeting(x,y + sign(vsp),obj_solid)
			y += sign(vsp)
		vsp = 0
		if place_meeting(x,y + 1,obj_solid)
			grounded = 1
	}
	else if place_meeting(x,y + vsp,obj_platform)
	{
		var platbelow = instance_place(x,y + vsp,obj_platform)
		if bbox_bottom < platbelow.bbox_top
		{
			while place_meeting(x,y,platbelow)
				y -= sign(vsp)
			while !place_meeting(x,y + sign(vsp),platbelow)
				y += sign(vsp)
			vsp = 0
			grounded = 1
		}
		else
		{
			y += vsp
			grounded = 0
		}
	}
	else
	{
		y += vsp
		grounded = 0
	}
	
	while place_meeting(x,y + abs(hsp) + 1,obj_slope) && !place_meeting(x,y + 1,obj_slope)
	{
		y += 0.1
		grounded = 1	
	}
	if place_meeting(x,y + 1,obj_slope)
	{
		grounded = 1
		if instance_place(x,y,obj_slope)
			while place_meeting(x,y,obj_slope)
				y -= 0.1
	}
}