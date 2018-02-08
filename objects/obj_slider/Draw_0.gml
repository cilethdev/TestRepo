/// @description 
draw_sprite(sprite_index,0,x,y);
draw_sprite_ext(sprite_index,1,x,y,value,1,spriteA,image_blend,image_alpha);

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+(sprite_width/2),y-16,text);

if focus {
	draw_circle(bbox_left-8,y-1,3,-1);
}