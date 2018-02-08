/// @description 
event_inherited();
canMove = true;
vx		= 0;
vxMax	= 3;
vy		= 0;
cx		= 0;
cy		= 0;
vyMax	= 10;
grav	= 0.4;

acc		= 0.5;
fric	= 0.5;
airAcc	= 0.5;
airFric = 0.1

//Jumping
jspd	= -6.25;
jNum	= 0;
jMax	= 2;
bounce	= false;

//Wall jump
onWall  = false;
wallJumpT = 0;
wallStick = 0;

//Collisions
onGround	= false;
cLeft		= 0;
cRight		= 0;

//Attacking
hitbox		= -1;
hit			= -1;
hitBy		= -1;
attackCD	= 0;

//Visuals
facing = 1;
landed = false;
xscale = 1;
yscale = 1;