return place_meeting(x,y+1,obj_solid) || (place_meeting(x,y+1,obj_passThru) && vy >= 0) && !place_meeting(x,y,obj_passThru);