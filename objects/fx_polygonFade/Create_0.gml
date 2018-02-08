/// @description 
rm		= -1;
fadeT	= 60;
colour  = make_colour_hsv(30,255,255);
hold	= 30;
points  = 5;
shapeA	= 0;
spin	= true;
spinAmt = 3;


FADEOUT = 0;
FADEIN  = 1;
FADEINOUT = 2;
type    = FADEINOUT;

w		= display_get_gui_width();
h		= display_get_gui_height();
targetx = w/2;
targety = h/2;

fxSurf  = surface_create(w,h);

switch(type) {
	case FADEOUT:
		shapeR = w;
	break;
	case FADEIN:
		shapeR = 0;
	break;
	case FADEINOUT:
		shapeR = w;
		type = FADEOUT;
		persistent = true;
	break;
}
