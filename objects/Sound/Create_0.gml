/// @description 
event_inherited();
ini_open("settings.ini");
	masterV	= ini_read_real("settings","masterV",1);
	musicV	= ini_read_real("settings","musicV",1);
	sfxV	= ini_read_real("settings","sfxV",1);
	mute	= ini_read_real("settings","mute",1);
ini_close();

showSoundSettings = false;