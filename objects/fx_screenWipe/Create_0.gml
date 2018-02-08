/// @description 
rm		= -1;
fadeT	= 30;
colour  = c_black;
hold	= 30;
dir		= 0;
dir_n   = 0;

FADEOUT = 0;
FADEIN  = 1;
FADEINOUT = 2;
type    = FADEINOUT;

switch(type) {
	case FADEOUT:
		fadeA = 0;
	break;
	case FADEIN:
		fadeA = 1;
	break;
	case FADEINOUT:
		fadeA = 0;
		type = FADEOUT;
		persistent = true;
	break;
}

w		= display_get_gui_width();
h		= display_get_gui_height();

wipeSurf = surface_create(w,h);
surface_set_target(wipeSurf);
draw_surface(application_surface,0,0);
surface_reset_target();

