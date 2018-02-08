/// @desc PlaySound(sound,pitch,loop,volume)
/// @arg sound
/// @arg pitch
/// @arg loop
/// @arg volume

var _sound,_pitch,_loop,_volume;
_sound  = argument0;
_pitch  = argument1;
_loop	= argument2;
_volume = argument3;

audio_play_sound(_sound,0,_loop);
audio_sound_pitch(_sound,_pitch);
audio_sound_gain(_sound,(Sound.masterV*Sound.sfxV*_volume)*Sound.mute,0);