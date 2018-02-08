/// @description
event_inherited();

cam		= view_get_camera(view_current);
camw	= camera_get_view_width(cam);
camh	= camera_get_view_height(cam);
camx	= camera_get_view_x(cam);
camy	= camera_get_view_y(cam);

target  = obj_player;
defaultLerpx = 4;
defaultLerpy = 8;
lerpx   = 4;
lerpy   = 8;

//screen shake
shake	= 0;
xoff	= 0;
yoff	= 0;