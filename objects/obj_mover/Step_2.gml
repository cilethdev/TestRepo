/// @description 
var vxNew, vyNew;

// Handle sub-pixel movement
cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;


repeat (abs(vyNew)) {
    if (!place_meeting(x, y + sign(vyNew), obj_solid)) {
        with (par_entity) {
            if (place_meeting(x, y + 1, other.id)) {
                if (!PlaceMeetingException(x, y + sign(vyNew), obj_solid, other.id))
                    y += sign(vyNew);
            }
            
            if (place_meeting(x, y - 1, other.id))
                y += sign(vyNew);
            
        }
		
        y += sign(vyNew);
    }
    else {
        vy *= 0-1;
        break;
    }
}

repeat(abs(vxNew)) {
    if (!place_meeting(x + sign(vxNew), y, obj_solid)) {
        with (par_entity) {
            if (place_meeting(x - sign(vxNew), y, other.id))
                x += sign(vxNew);
                
            if (place_meeting(x + sign(vxNew), y, other.id))
                x += sign(vxNew);    
            
            if (platformTarget != other.id)
                continue;
                
            if (!platformTarget) {
                if (place_meeting(x, y + 1, other.id))
                    platformTarget = other.id;
            }
            
            if (!place_meeting(x + sign(vxNew), y, obj_solid) && platformTarget == other.id)
                x += sign(vxNew);
        }
        x += sign(vxNew);
    }
    else {
        vx *= -1;
        break;
    }
}