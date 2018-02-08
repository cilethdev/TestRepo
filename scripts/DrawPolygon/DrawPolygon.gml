/// @description Draw a polygon of n number of sides using "thickness"
///				 create a solid polygon by using a thickness the same as the radius
/// @arg x;
/// @arg y;
/// @arg points;
/// @arg radius
/// @arg thickness
/// @arg rotation
/// @arg colour
/// @arg alpha

var _centerx	= argument0;
var _centery	= argument1;
var _points		= argument2;
var _dirIncrement = 360/_points;
var _radius		= argument3;
var _thickness  = argument4;
var _rot		= argument5;
var _colour     = argument6;
var _alpha		= argument7;

draw_set_colour(_colour);
draw_set_alpha(_alpha);

draw_primitive_begin(pr_trianglestrip);

for(var _i = 0; _i < _points+1; _i++) {
	var _drawDir = _rot+_dirIncrement * _i;
	draw_vertex(_centerx+lengthdir_x(_radius, _drawDir),
				_centery+lengthdir_y(_radius, _drawDir));
				
	draw_vertex(_centerx+lengthdir_x(_radius-_thickness, _drawDir),
				_centery+lengthdir_y(_radius-_thickness, _drawDir));
}

draw_primitive_end();

draw_set_colour(c_white);
draw_set_alpha(1);