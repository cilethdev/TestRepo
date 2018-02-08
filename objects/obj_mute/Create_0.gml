/// @description 
event_inherited();

text = "MUTE";
ini_open("settings.ini");
mute = ini_read_real("settings","mute",1);
ini_close();