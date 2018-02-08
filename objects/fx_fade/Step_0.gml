/// @description

switch(type) {
	case FADEOUT:
		fadeA = Approach(fadeA,1,1/fadeT);
		if fadeA == 1 {
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
		fadeA = Approach(fadeA,0,1/fadeT);
		if fadeA == 0 {
			if hold hold--;
			if !hold {
				instance_destroy();
			}
		}
	break;
}