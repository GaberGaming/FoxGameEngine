 scr_input()
move = k_left + k_right
depth = -999
switch state
{
	case 0:
		scr_player_normal()
	break
	case 1:
		scr_player_attack()
	break
	case 2:
		scr_player_attackhit()
	break
	case 3:
		scr_player_bump()
	break
	case 999999:
		scr_player_levelend()
	break
	case 4:
		scr_player_spring()
	break
	case 5:
		scr_player_dash()
	break
	case 6:
		scr_player_ramp()
	break
	case 7:
		scr_player_groundpound()
	break
	case 8:
		sprite_index = spr_player_lookdoor
		movespeed = 0
		hsp = 0
		vsp = 0
		image_speed = 0
	break
	case 9:
		scr_player_chainsaw()
	break
	case 10:
		scr_player_slide()
	break
	case 11:
		scr_player_punch()
	break
	case 12:
		scr_player_frozen()
	break
	case 13:
		scr_player_hurt()
	break
	case 14:
		scr_player_attackSpin()
	break
}
if state != 3
invframes -= 0.25
frames -= 0.1
if state != 10
	mask_index = spr_player_mask
else
	mask_index = spr_player_masksmol
/*if place_meeting(x,y,obj_solid)
{
	state = 10
	movespeed = 10
	vsp = 0
}*/
if state != 999999 and state != 2 and state != 8 and state != 9999999999999999999999999999999999999999999999999999
	scr_collide()
/*if state != 10
	mask_index = spr_player_mask
else
	mask_index = spr_player_masksmol*/
if room = Editor
	state = 9999999999999999999999999999999999999999999999999999
else if state = 9999999999999999999999999999999999999999999999999999
	state = 0
if place_meeting(x, y, obj_solid) and state != 2
{
	state = 10
	movespeed = 10
}
image_xscale = xscale
if place_meeting(x, (y + 1), obj_slope)
{
	var Slope = instance_place(x, (y + 1), obj_slope)
	var SlopeXscale = abs(Slope.image_xscale)
	 var targetAngle = ((25 / SlopeXscale) * sign(Slope.image_xscale))
	drawAngle = targetAngle
}
else
	drawAngle = 0
if state = 1 or state = 3 or state = 5 or state = 9 or state = 11 or state = 10 or state = 2 or state = 7
	scr_afterimage()
if y > room_height * 1.2
{
	x = startx
	y = -150//starty
	state = 3
	vsp = 0
	movespeed = 0
}
if global.combo > 0
{
	if state != 999999 and state != 2
	{
		combostop -= 0.25
		if combostop < 0
		{
			combotime -= 0.25
		}
	}
	if combotime < 0
		global.combo = 0
}
if combotime > 120
	combotime = 120
if state != 5
	runstop = 0
//with all
//	image_blend = choose(make_color_rgb(0,150,255),make_color_rgb(150,150,255),make_color_rgb(150,0,255))
if global.collect < 0
	global.collect = 0
if room = TitleReale
{
	state = 9999999999999999999999999	
}
else if state = 9999999999999999999999999
{
	state = 3
	movespeed = 0
}
if state != 12
	frozenhit = 0
if room = Hub or room = Title
	global.collect = 0

global.drawhud = 1

combosintime++
if combosintime > 2700 //180 * 15, sin repeats at 180, with a 15x damper - wrapped to prevent overflow
	combosin -= 2700
combosin = sin(combosintime / 15) * 5

if k_jump_release
	playedjump = 0
if jumpbuffer > 0
	jumpbuffer--
if k_jump_press && !grounded
	jumpbuffer = 3
if keyboard_check(ord("J")) and keyboard_check(ord("O"))
	jojo = 1
time++
bobsin = sin(time / 7) * bobintensity
if global.combo > 0
	instance_create_unique(x,y,obj_coinget)
if global.combo = 0
	instance_destroy(obj_coinget)
if grounded
{
	airattack = 0
	momentum = 0
}
if attackstyle != "DASHATTACK"
	airattack = 0
	
window_set_fullscreen(fullscreen)