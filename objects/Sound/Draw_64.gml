/// @description 
if showSoundSettings {
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(8,8,
	"MASTER: " + string(masterV) +
	"\nMUSIC: " + string(musicV) +
	"\nSFX: " + string(sfxV) +
	"\nMUTE: " + string(mute));
}