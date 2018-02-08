/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,spriteA,image_blend,image_alpha);
if text != "" {
	draw_set_colour(c_black);
	draw_set_font(fnt_HUD);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x,y,text,xscale,yscale,spriteA);
}

if focus || mouseOn {
	draw_set_colour(c_white);
	draw_rectangle(bbox_left-(16*xscale),y-4,bbox_left-(8*xscale),y+4,-1);
}