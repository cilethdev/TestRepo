/// @description
event_inherited();
instance_destroy();
repeat(irandom_range(5,15)) {
	instance_create_layer(x,y-8,"Instances",obj_coin);
}