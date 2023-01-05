display_set_gui_size(960,540)
draw_set_font(ComicSans)
draw_text(920,500,fps)

/*draw_set_font(ComicSans)
draw_text(800,500,zoom_level)
hudy2 = 6 + (random_range(-4,4))
if hud = 1
{
	if hudy != 6
	draw_sprite(hudspr,-1,0,hudy)
	else
	draw_sprite(hudspr,-1,0,hudy2)
}
if hudtime > 0
{
	if hudy < 280
		hudy += 0.5
}