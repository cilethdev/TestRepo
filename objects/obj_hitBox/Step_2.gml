/// @description 
life--;
if !life {
	instance_destroy();
}
if instance_exists(owner) {
	x = owner.x+xoff;
	y = owner.y+yoff;
}