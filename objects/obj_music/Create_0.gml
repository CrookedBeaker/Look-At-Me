/// @description Make some music

if !audio_is_playing(musicid) {

audio_stop_sound(mus_main);
audio_stop_sound(mus_darkside);
if global.music {
	audio_play_sound(musicid,9,true);
}
instance_destroy();

}