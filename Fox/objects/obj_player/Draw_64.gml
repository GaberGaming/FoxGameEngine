display_set_gui_size(960,540)
if global.drawhud
{
	if global.haskey
		draw_sprite_ext(spr_key,-1,500,32,1,image_yscale,image_angle,image_blend,0.9)
	draw_sprite_ext(spr_keySlot,-1,500,32,1,image_yscale,image_angle,image_blend,0.7)
	draw_set_font(collect_font)
	/*draw_text(40,128,(string("HSP") + string(hsp)))
	draw_text(40,160,(string("VSP") + string(vsp)))
	draw_text(40,192,(string("MOVESPEED") + string(movespeed)))
	draw_text(40,224,(string("IMAGE_INDEX") + string(floor(image_index))))
	draw_text(40,256,(string("SPRITE_INDEX") + string(sprite_index)))*/
	collectstring = (string("SCORE X ") + string(global.collect))
	// collectstringw = string_width(collectstring)
	draw_text(40, 32.5, collectstring)
	combostring = (string("COMBO X ") + string(global.combo))
	// combostringw = string_width(combostring)
	if combotime < 15
		comboshakew = random_range(-2,2)
	else
		comboshakew = 0
	if combotime < 15
		comboshakeh = random_range(-2,2)
	else
		comboshakeh = 0
		draw_set_color(c_white)
		
		if global.combo > 0
			combotextoffset_target = 0
		else
			combotextoffset_target = -500
		combotextoffset = lerp(combotextoffset,combotextoffset_target,0.1)
		draw_text(40 + comboshakew + combotextoffset + combosin, 80 + comboshakeh,combostring)
		draw_healthbar(50 + string_width(combostring) + comboshakew + combotextoffset + combosin, 80 + comboshakeh,180 + string_width(combostring) + comboshakew + combotextoffset + combosin,75 + comboshakeh,combotime,c_black,c_white,c_white,0,1,1)
}