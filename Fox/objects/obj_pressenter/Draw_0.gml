draw_set_font(ComicSans)
draw_set_color(c_white)
fakey = y + yplus
yplus += changeby
if yplus >= 5
	changeby = -1
if yplus <= -5
	changeby = 1
draw_text(x,fakey,"Press ENTER")