hsp = image_xscale * movespeed
if place_meeting(x + hsp,y,obj_solid)
	image_xscale *= -1
x += hsp