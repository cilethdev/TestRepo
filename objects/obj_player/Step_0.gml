/// @description
#region Movement
if !canMove exit;
var tempAcc,tempFric,tempGrav,tempMaxGrav;
tempAcc		= acc;
tempFric	= fric;
tempGrav	= grav;
tempMaxGrav = vyMax;

if !onGround {
	tempAcc	 = airAcc;
	tempFric = airFric;
	
	if onWall {
		tempGrav	= 0.2;
		tempMaxGrav = 2;
	}
	
	vy = Approach(vy,tempMaxGrav,tempGrav);
	
} else {
	vy = 0;
}


if Input.kLeft {
	if !onWall {
		facing = -1;
		vx = Approach(vx,vxMax*facing,tempAcc);
	} else {
		if cRight {
			wallStick++;
			if wallStick == 10 {
				onWall = false;
				wallJumpT = 10;
			}
		}
	}
}

if Input.kRight {
	if !onWall {
		facing = 1;
		vx = Approach(vx,vxMax*facing,tempAcc);
	} else {
		if cLeft {
			wallStick++;
			if wallStick == 10 {
				onWall = false;
				wallJumpT = 10;
			}
		}
	}
}

if !Input.kLeft && !Input.kRight {
	vx = Approach(vx,0,tempFric);
}

if Input.kJumpP {
	if onWall {
		if cLeft && !onGround {
			if Input.kLeft {
				facing = -1;
				vx = vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 15;
				wallStick = 0;
			} else {
				facing = 1;
				vx = vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 15;
				wallStick = 0;
			}
			
		}
		if cRight && !onGround {
			if Input.kRight {
				facing = 1;
				vx = -vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 15;
				wallStick = 0;
			} else {
				facing = -1;
				vx = -vxMax;
				vy = jspd;
				onWall = false;
				wallJumpT = 15;
				wallStick = 0;
			}
		}
		jNum = 1;
	} else
	if jNum < jMax {
		jNum++;
		vy = jspd;
		bounce = false;
	
		//vfx
		xscale = 0.5;
		yscale = 1.5;
	
	}
}
if Input.kJumpR && vy < -2 && !bounce {
	vy = -2;
}

//WallJump timers
if wallJumpT wallJumpT--;

//Pass thru
if (place_meeting(x,y+1,obj_passThru) && !place_meeting(x,y+1,obj_solid)) && Input.kDown {
	y += 1;
}

#endregion

#region Attack
if !attackCD && !onWall && Input.kAttackP {
	attackCD = 30;
	hitBox = HitBoxCreate(24*facing,20,4*facing,-16,5,2+abs(vx/2),-4,0);	
}
if attackCD attackCD--;
#endregion

