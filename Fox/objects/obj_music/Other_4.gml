audio_sound_gain(music,volume * 0.1,0)
if room = Hub or room = Hub2 or room = TitleReale or room = Title
{
	if music != mu_hub
	{
		music = mu_hub
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = Forest_1 or room = Forest_2 or room = Forest_3 or room = Forest_4 or room = Forest or room = Forest_0
{
	if music != mu_forest
	{
		music = mu_forest
		audio_stop_all()
	}
	audio_sound_pitch(music,1)
}
else if room = Mansion_1 or room = Mansion_2 or room = Mansion_3 or room = Mansion_4
{
	if music != mu_mansion
	{
		music = mu_mansion
		audio_stop_all()
	}
	if room = Mansion_4
		audio_sound_pitch(music,0.75)
	else
		audio_sound_pitch(music,1)
}
else
{
	music = noone
	audio_stop_all()
	audio_sound_pitch(music,1)
}
