/// @description 
mouseOn = position_meeting(mouse_x,mouse_y,id);

if mouseOn {
	if !mouseEnter {
		mouseEnter = true;
		xscale = 1.2;
		yscale = 1.2;
		with(par_menuItem) {
			focus = -1;
		}
		if instance_exists(cont_mMain) { cont_mMain.menuPos = -1; }
		
		//sfx
		PlaySound(snd_hover,1,0,1);
	}
} else {
	mouseEnter = -1;
}

if (focus || mouseOn) {
	if (Input.kAttack || Input.mLeftP) {
		switch(type) {
			case bType.gotoRm: 
				if rm != -1 { 
					//var fade = instance_create_layer(0,0,"Instances",fx_fade);
					//fade.rm = rm;
					//fade.colour = c_fuchsia;
					var fade = instance_create_layer(0,0,"Instances",fx_polygonFade);
					fade.rm = rm;
					//var wipe = instance_create_layer(0,0,"Instances",fx_screenWipe);
					//wipe.rm = rm;
					//wipe.dir = irandom(3);
					//var fade = instance_create_layer(0,0,"Instances",fx_shapeFill);
					//fade.rm = rm;
				}
			break;
			case bType.exitGame:
				game_end();
			break;
			case bType.resume:
				with(Pause) {
					paused = false;
					event_user(1);
				}
			break;
			case bType.endLevel:
				if rm != -1 { room_goto(rm); }
				with(Pause) {
					paused = false;
					event_user(1);
				}
			break;
		}
		
		//sfx
		PlaySound(snd_select,1,0,1);
	}
}