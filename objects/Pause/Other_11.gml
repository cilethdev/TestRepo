/// @description 
instance_activate_all();
with(resume)  { instance_destroy(); }
with(endGame) { instance_destroy(); }
if (sprite_exists(pauseSprite)) {
	sprite_delete(pauseSprite);
}
nItems = -1;