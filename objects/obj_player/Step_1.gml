/// @description 
event_inherited();

cLeft	= place_meeting(x-1,y,obj_solid);
cRight	= place_meeting(x+1,y,obj_solid);

if onGround {
	jNum   = 0;
	onWall = false;
	wallStick = 0;
	bounce = false;
	if !landed {
		landed = true;
		xscale = 1.5;
		yscale = 0.5;
	}
}
if !onGround {
	landed = false;
	if !wallJumpT && (cLeft || cRight) {
		if !onWall && vy >= 0 {
			onWall = true;
			vy = 0;
		}
	}
	if (!cLeft && !cRight) {
		onWall = false;
		wallStick = 0;
	}
	
}