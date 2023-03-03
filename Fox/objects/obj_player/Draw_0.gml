draw_set_color(c_white)
draw_sprite_ext(mask_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, drawAngle, image_blend, image_alpha)
if jojo
draw_sprite_ext(spr_jojohat, image_index, x, y - 64 + bobsin, image_xscale, image_yscale, drawAngle, image_blend, image_alpha)