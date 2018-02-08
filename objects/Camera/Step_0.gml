/// @description 

if !instance_exists(obj_player) {
	
	//camera_set_view_pos(cam,0,0);
} else {
	if instance_exists(obj_cameraFocus) {
		target = obj_cameraFocus;
	} else {
		if target == obj_player {
			lerpx = Approach(lerpx,defaultLerpx,1);
			lerpy = Approach(lerpy,defaultLerpy,1);
		}
	}
	x = ReachTween(x,target.x,lerpx);
	y = ReachTween(y,target.y-8,lerpy);
	
	if shake {
		shake = Approach(shake,0,0.5);
		x += shake*choose(-1,1);
		y += shake*choose(-1,1);
	}
	
	
	camera_set_view_pos(cam,x-camw/2,y-camh/2);
}


if Input.mRightP {
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_cameraFocus);
}

if keyboard_check_pressed(ord("1")) {
	shake = 5;
}
