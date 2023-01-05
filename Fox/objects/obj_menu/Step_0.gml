if keyboard_check_pressed(vk_escape)
	obj_pressenter.instance_create(x,y)
	instance_destroy()
if keyboard_check_pressed(vk_return)
{
    if (selected == 0)
    {
        room_goto(Title)
    }
    else if (selected == 1 && inMenu)
	{
		game_end()
	}
	else
	{
		inMenu = 0
		inMenu = !inMenu
		unpaused = 0
	}
}
if inMenu
    instance_deactivate_all(true)
else
{
    instance_activate_all()
    selected = 0
}
if (keyboard_check_pressed(vk_down) && selected != 2 && paused)
    selected += 1
if (keyboard_check_pressed(vk_up) && selected != 0 && paused)
    selected -= 1
	
