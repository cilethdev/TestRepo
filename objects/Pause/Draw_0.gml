/// @description
if showPauseMenu {
	var cam = view_get_camera(view_current);
	var camx = camera_get_view_x(cam);
	var camy = camera_get_view_y(cam);
	var camw = camera_get_view_width(cam);
	var camh = camera_get_view_height(cam);
	if (sprite_exists(pauseSprite)) {
		draw_sprite_ext(pauseSprite,0,camx,camy,camw/view_wport,camh/view_hport,0,c_white,1);
	}
	/*
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(camx,camy,camw,camh,-1);
	draw_set_alpha(1);
	*/
}