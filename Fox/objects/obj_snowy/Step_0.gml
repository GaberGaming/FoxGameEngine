switch state
{
	case 0:
		scr_enemy_normal()
	break
	case 1:
		scr_enemy_thrown()
	break
	case 2:
		scr_enemy_hitstun()
	break
	case 3:
		scr_snowy_idle()
	break
	case 4:
		scr_snowy_jump()
	break
}
if state != 1
{
	if global.hardmode != 1
		movespeed = 1.5
	else
		movespeed = 2.5
}
hitY = y
hitX = x
if state != 2
scr_collide()