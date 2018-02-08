/// @description 
mouseOn = position_meeting(mouse_x,mouse_y,id);

if mouseOn {
	if !mouseEnter {
		mouseEnter = true;
		with(par_menuItem) {
			focus = -1;
		}
		xscale = 1.2;
		yscale = 1.2;
	}
	focus = 1;
} else {
	mouseEnter = false;
}

if (focus || mouseOn) {
	if Input.mLeftP || Input.kAttackP {
		if mute == 0 {
			mute = 1;
		} else {
			mute = 0;
		}
		
		ini_open("settings.ini");
		ini_write_real("settings","mute",mute);
		ini_close();
		Sound.mute = mute;
	}
}