/// @description 
duration  = 300;
Camera.target = id;
Camera.lerpx  = 30;
Camera.lerpy  = 30;
if instance_exists(obj_player) {
	obj_player.canMove = false;
}