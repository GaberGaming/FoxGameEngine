if (obj_player.bbox_bottom > y)
{
    instance_destroy()
    if instance_exists(obj_platform)
        obj_platform.created = 0
}

