/// @description 

fadeR = Approach(fadeR,fadeRT,fadeRT/fadeT);
if fadeR == fadeRT {
	if hold hold--;
	if !hold {
		room_goto(rm);
		instance_destroy();
	}
}
draw_set_colour(colour);

var offset = (fadeRT/2);
for(i=0;i<gridx;i++) {
	for(j=0;j<gridy;j++) {
		draw_circle(i*fadeRT+offset,j*fadeRT+offset,fadeR,-1);
	}
}