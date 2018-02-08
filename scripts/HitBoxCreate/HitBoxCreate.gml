///@param xscale
///@param yscale
///@param xoff
///@param yoff
///@param life
///@param xhit
///@param yhit
///@param hitStun

_hitbox = instance_create_layer(x,y,"Instances",obj_hitBox);
_hitbox.owner = id;
_hitbox.image_xscale = argument0;
_hitbox.image_yscale = argument1;
_hitbox.xoff = argument2;
_hitbox.yoff = argument3;
_hitbox.life = argument4;
_hitbox.xhit = argument5;
_hitbox.yhit = argument6;
_hitbox.hitStun = argument7;

return _hitbox;
