/// @description 
event_inherited(); //collision

//crush and falling
if place_meeting(x,y,obj_solid) {
	PlayerDeath();
}
if y > room_height {
	PlayerDeath();
}

#region Animation control

xscale = Approach(xscale,1,0.05);
yscale = Approach(yscale,1,0.05);

#endregion