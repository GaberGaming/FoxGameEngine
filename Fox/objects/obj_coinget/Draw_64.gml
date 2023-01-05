collect_font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", true, 2);
draw_set_font(collect_font)
draw_sprite_ext(spr_coin,image_index,869,12 + bobsin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if global.combo >= 2 draw_sprite_ext(spr_coin,image_index,916,42 + bobsin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if global.combo >= 3 draw_sprite_ext(spr_coin,image_index,900,56 + bobsin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if global.combo >= 4 draw_sprite_ext(spr_coin,image_index,859,32 + bobsin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_text(869,40 + bobsin,collectget)
