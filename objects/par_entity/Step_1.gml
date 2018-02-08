/// @description 
onGround = OnGround();

if cLeft {
	wallTarget = instance_place(x-1,y,obj_solid);
}
if cRight {
	wallTarget = instance_place(x+1,y,obj_solid);
}
if (!cLeft && !cRight) {
	wallTarget = -1;
}

if onGround {
	platformTarget = instance_place(x,y+1,obj_solid);
} else {
	platformTarget = -1;
}