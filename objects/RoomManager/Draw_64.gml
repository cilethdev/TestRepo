/// @description 
if showRoomList {
	
	list_n = ReachTween(list_n,listEdge,15);
	
	draw_set_font(fnt_HUD);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);

	listPos += (mouse_wheel_down() - mouse_wheel_up());
	listPos = clamp(listPos,0,room_last);
	
	pos_n = ReachTween(pos_n,listPos,8);
	
	if Input.kAttackP {
		if room != listPos {
			showRoomList = false;
		
			var fx = instance_create_layer(0,0,"Instances",fx_polygonFade);
			fx.rm = listPos;
			fx.points = 3;
		}
	}
	
	//background
	draw_set_colour(c_black);
	draw_rectangle(0,0,list_n,display_get_gui_height(),-1);
	
	for(i=0;i<array_length_1d(roomList);i++) {
		var focus = (i == listPos);
		var xoff  = (focus)? 8 : 0;
		draw_set_colour((focus)? c_white : c_dkgray);
		
		draw_text((list_n-listEdge)+listx+xoff,listy+(i*spacing)-(pos_n*spacing),roomList[i]);
	}

}