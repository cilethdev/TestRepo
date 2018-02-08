/// @description 
var dir = sign(x-other.x)
with(other){
    //check to see if your target is on the ignore list
    //if it is on the ignore list, dont hit it again
    for(i = 0; i < ds_list_size(ignoreList); i ++){
        if(ignoreList[|i] = other.id){
            ignore = true;
            break;
        }
    }
					
	//if it is NOT on the ignore list, hit it, and add it to
    //the ignore list
    if (!ignore) {
		other.vx = xhit*dir;
		other.vy = yhit;
        ds_list_add(ignoreList,other.id);
    }
}