/// @description

draw_set_colour(colour);
draw_rectangle(0,0,w,h,-1);


switch(dir) {
	case 0: //to left
		dir_n = Approach(dir_n,-w,w/fadeT);
		draw_surface(wipeSurf,dir_n,0);
		if dir_n == -w {
			if hold hold--;
			if !hold {
				room_goto(rm);
				instance_destroy();
			}
		}
	break;
	case 1: //to right
		dir_n = Approach(dir_n,w,w/fadeT);
		draw_surface(wipeSurf,dir_n,0);
		if dir_n == w {
			if hold hold--;
			if !hold {
				room_goto(rm);
				instance_destroy();
			}
		}
	break;
	case 2: //to up
		dir_n = Approach(dir_n,-h,h/fadeT);
		draw_surface(wipeSurf,0,dir_n);
		if dir_n == -h {
			if hold hold--;
			if !hold {
				room_goto(rm);
				instance_destroy();
			}
		}
	break;
	case 3: //to down
		dir_n = Approach(dir_n,h,h/fadeT);
		draw_surface(wipeSurf,0,dir_n);
		if dir_n == h {
			if hold hold--;
			if !hold {
				room_goto(rm);
				instance_destroy();
			}
		}
	break;
}

