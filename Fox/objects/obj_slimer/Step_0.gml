scr_collide()
image_speed = 0.35
if vsp < 20
	vsp += grav
hsp = movespeed * image_xscale
if place_meeting(x,y,obj_player) {
	with obj_player {
		jumpscareddoor = targetDoor
		jumpscaredroom = room
		room_goto(JumpscareRoom)
		alarm[0] = 120
		sound(sfx_laugh)
		targetDoor = "A"
	}
}
if place_meeting(x + image_xscale,y,obj_solid) {
	image_xscale *= -1
	movespeed = 0
}
if movespeed < 12
	movespeed += 0.1