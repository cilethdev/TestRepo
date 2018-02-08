/// @description 
var mouseOn = point_in_rectangle(mouse_x,mouse_y,bbox_left-4,bbox_top-4,bbox_right+4,bbox_bottom+4);

if mouseOn && !mouseEnter {
	mouseEnter = true;
	with(par_menuItem) { focus = -1; }
} else {
	mouseEnter = false;
}

if (focus || mouseOn) {
	if mouse_check_button(mb_left) {
		value = clamp((mouse_x-x)/sprite_width,0,1); 
	}
	value += (Input.kRightP - Input.kLeftP)*0.05;
	value  = clamp(value,0,1);
	
	//update settings
	if update {
		ini_open("settings.ini");
		ini_write_real("settings",target,value);
		ini_close();
		
		switch(target) {
			case "masterV":
				Sound.masterV = value;
			break;
			case "musicV":
				Sound.musicV = value;
			break;
			case "sfxV":
				Sound.sfxV = value;
			break;
			default:
			break;
		}
	}
}

if prevValue != value {
	update = true;
	prevValue = value;
}