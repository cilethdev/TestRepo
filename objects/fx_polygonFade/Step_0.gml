/// @description
if spin {
	shapeA += spinAmt;
}
switch(type) {
	case FADEOUT:
		shapeR = Approach(shapeR,0,w/fadeT);
		if shapeR == 0 {
			if hold hold--;
			if rm != -1 && !hold {
				room_goto(rm);
				if !persistent {
					instance_destroy();
				}
			}
		}
	break;
	case FADEIN:
		shapeR = Approach(shapeR,w,w/fadeT);
		if shapeR == w {
			if hold hold--;
			if !hold {
				instance_destroy();
			}
		}
	break;
}