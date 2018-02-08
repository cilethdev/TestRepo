/// @description 
if instance_exists(obj_player) {
	Camera.target = obj_player;
	obj_player.canMove = true;
}