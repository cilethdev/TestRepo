/// @description
event_inherited();

currentRoom = room;
prevRoom	= room;


for(i=0;i<room_last+1;i++) {
	roomList[i] = room_get_name(i);
}
showRoomList = false;
listPos = 0;
pos_n	= 0;
spacing = 24;


listEdge = 192;
list_n = 0;
listx = 16;
listy = display_get_gui_height()/2;

//restarting room
restart = -1