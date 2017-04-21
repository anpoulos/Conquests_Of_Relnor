/// @description Insert description here
// You can write your code in this editor

if(loadingOpacity == 2.0){
	scr_player_new_room(destinationX, destinationY, destinationRoom);
	
	isLoading = false;
	loadingOpacity = 0.9;
}

if(!audio_is_playing(currentMusic)){
	currentMusic = scr_audio_music_get_random_music(musicType);
	currentMusicIndex = audio_play_sound(currentMusic, 10, false);
	audio_sound_gain(currentMusicIndex, 0, 0);
	audio_sound_gain(currentMusicIndex, 1, 1000);
}

if(audio_sound_get_gain(currentMusicIndex) == 0){
	audio_stop_sound(currentMusic);
	currentMusic = scr_audio_music_get_random_music(musicType);
	currentMusicIndex = audio_play_sound(currentMusic, 10, false);
	audio_sound_gain(currentMusicIndex, 0, 0);
	audio_sound_gain(currentMusicIndex, 1, 1000);
}