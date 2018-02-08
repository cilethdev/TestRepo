/// @description 
var vxNew, vyNew;

// Handle sub-pixel movement
cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;


repeat(abs(vy)) {
	if !PlatformCheck() {
		y += sign(vy);
	} else {
		if bouncey && vy > 0.5 {
			vy *= -e;
		} else {
			vy = 0;
		}
		break;
	}
}

repeat(abs(vx)) {
	if !place_meeting(x+sign(vx),y,obj_solid) {
		x += sign(vx);
	} else {
		if bouncey {
			vx *= -e;
		} else {
			vx = 0;
		}
		break;
	}
}
