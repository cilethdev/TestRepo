/// @description 
if target != "" {
	ini_open("settings.ini");
	value = ini_read_real("settings",target,1);
	ini_close();
}