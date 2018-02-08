/// @description
if !surface_exists(fxSurf) {
	surface_create(w,h);
}
surface_set_target(fxSurf);

	draw_set_colour(colour);
	draw_rectangle(0,0,w,h,-1);
	
	gpu_set_blendmode(bm_subtract);
	DrawPolygon(targetx,targety,points,shapeR,shapeR,shapeA,c_white,1);
	gpu_set_blendmode(bm_normal);
	
surface_reset_target();

draw_surface(fxSurf,0,0);