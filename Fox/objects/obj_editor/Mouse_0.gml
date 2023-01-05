if !place_meeting(x,y,obj_editorcreator)
{
	with instance_create_depth(x,y,depth,obj_editorcreator)
	{
		object = other.object
		sprite = other.sprite
	}
}