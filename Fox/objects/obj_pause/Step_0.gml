if keyboard_check_pressed(vk_escape)
	game_end()
if keyboard_check_pressed(vk_return) and room != Editor and room != PlayLevel
{
	if room != TitleReale
	{
	    if (selected == 0)
	    {
	        paused = (!paused)
	        selected = 0
	  }
	    else if (selected == 1 && paused)
	    {
	        room_restart()
	        paused = 0
			global.collect = 0
			global.combo = 0
			global.haskey = 0
			ds_list_clear(global.save)
	    }
	    else if (selected == 2 && paused)
		{
			if room != Hub
			{
				room_goto(Hub)
				paused = !paused
			unpaused = 1
			global.collect = 0
			global.combo = 0
			global.haskey = 0
			ds_list_clear(global.save)
			}
			if room = Hub
			{
				room_goto(Title)
				paused = !paused
			unpaused = 1
			global.collect = 0
			global.combo = 0
			global.haskey = 0
			ds_list_clear(global.save)
			}
			if room = Title
			{
				paused = 0
			unpaused = 1
			global.collect = 0
			global.combo = 0
			global.haskey = 0
			ds_list_clear(global.save)
				room_goto(TitleReale)
			}
			if room = TitleReale
				game_end()

		}
	}
	else
	{
		paused = 0
			//paused = !paused
			unpaused = 0
		global.collect = 0
		global.combo = 0
		global.haskey = 0
		ds_list_clear(global.save)
	}
}
if paused
    instance_deactivate_all(true)
else
{
    instance_activate_all()
    selected = 0
	if unpaused = 1
	{
		obj_player.targetDoor = 1
		obj_player.hallwayxscale = 0
		if room = Hub
		{
			with obj_player
			{
				state = 3
				movespeed = 0
			}
		}
		unpaused = 0
	}
}
if (keyboard_check_pressed(vk_down) && selected != 2 && paused)
    selected += 1
if (keyboard_check_pressed(vk_up) && selected != 0 && paused)
    selected -= 1
switch selected
{
	case 0:
		sprite = spr_player_idle
	break
	case 1:
		sprite = spr_player_walk
	break
	case 2:
		sprite = spr_player_hurtidle
	break
}
