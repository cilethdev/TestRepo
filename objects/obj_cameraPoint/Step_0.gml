/// @description 
if instance_exists(obj_player) {
	var dist = point_distance(xstart,ystart,obj_player.x,obj_player.y);
	if dist < pullRange {
		var xtarget,ytarget;
		Camera.target = id;
		Camera.lerpx  = 30;
		Camera.lerpy  = 30;
		x = xstart + ((obj_player.x - xstart)/1.5);
	} else {
		Camera.target = obj_player;
		x = xstart;
		y = ystart;
	}
	
}