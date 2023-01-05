if music != noone
{
	if !audio_is_playing(music)
	{
		audio_stop_all()
		audio_play_sound(music,10,1000)
		audio_sound_gain(music, 0.4, 0)
	}
}
if volume < 0
	volume = 0
if volume > 100
	volume = 100
audio_sound_gain(music,0.25,0)