/// @description 
vx		= 0;
vy		= 0;
cx		= 0;
cy		= 0;
vyMax	= 8;
grav	= 0.3;
fric	= 0.5;

bouncey = false;
e		= 0.5;

onGround		= OnGround();
platformTarget	= -1;
wallTarget		= -1;

cLeft	= -1;
cRight	= -1;

facing = 1;