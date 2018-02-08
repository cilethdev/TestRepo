/// @description 
if !onGround {
	vy = Approach(vy,vyMax,grav);
} else {
	//vy = 0;
	vx = Approach(vx,0,fric);
}
