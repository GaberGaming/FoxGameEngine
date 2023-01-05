// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_afterimage(){

	afterimagebuffer -= 0.5
	if afterimagebuffer < 0
	{
		with instance_create_depth(x ,y ,depth+1,obj_afterimage)
		{
			sprite_index = other.sprite_index
			image_index = other.image_index
			image_xscale = other.xscale
			other.afterimagebuffer = 2.5
			//image_blend = other.rgb
		}
	}

}
function Approach(argument0,argument1,argument2){
	
if (argument0 < argument1)
    return min(argument0 + argument2, argument1); 
else
    return max(argument0 - argument2, argument1);

}
function instance_create_unique( _x, _y, _object){
	if !instance_exists(_object)
		instance_create_depth( _x, _y, depth, _object)
}
function instance_create_buffer( _x, _y, _buffer, _object){
	_buffer--
	if _buffer < 0
		instance_create_depth( _x, _y, depth, _object)
}
function sound_unique(sound){
	if !audio_is_playing(sound)
	audio_play_sound(sound,0.6,0)
}
function changeToSprite(sprite,speed,index){
	if floor(image_index) = image_number - 1
	{
		image_index = index
		sprite_index = sprite
		image_speed = speed
	}
}
function changeToState(sprite,speed,index,stateid){
	if floor(image_index) = image_number - 1
	{
		image_index = index
		sprite_index = sprite
		image_speed = speed
		state = stateid
	}
}
function zoom(zoomlvl)
{
	with obj_camera
		zoom_level(zoomlvl)
}