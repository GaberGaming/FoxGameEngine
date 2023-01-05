display_set_gui_size(960,540)
if talking {
	var textlenght = string_length(string(text))
	draw_set_color(c_white)
	draw_set_font(ComicSans)
	draw_text(((480) - (textlenght/2)),450,string(text))
}