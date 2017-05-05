/// @description Insert description here
// You can write your code in this editor

global.debug = 0;
global.loadingInstances = false;
global.player = noone;
global.gamePaused = false;
global.shadowOpacity = 0.5;
global.shadowOpacityMax = 0.5;
global.moonTonight = true;
global.additiveLights = scr_linked_list_create();
global.totalLights = scr_linked_list_create();
global.worldMapGrid = noone;
global.worldMapControl = instance_create(0,0,obj_map_world_control);

for(var i = 0; i < ROOM_MAX; i++){
	lifeformList[i] = noone;
	objectList[i] = noone;
	itemList[i] = noone;
	vaultList[i] = scr_linked_list_create();
}

destinationX = noone;
destinationY = noone;
destinationRoom = noone;
loadingOpacity = 0.0;

mapMusicType = MUSIC_TYPE_TITLE;
musicType = MUSIC_TYPE_TITLE;
currentMusic = scr_audio_music_get_random_music(musicType);
currentMusicIndex = audio_play_sound(currentMusic, 10, false);
audio_sound_gain(currentMusicIndex, 0, 0);
audio_sound_gain(currentMusicIndex, 1, 2000);

var _sigma = 72;
var _mu = LEVEL_CAP + 100;

for(var i = 0; i < LEVEL_CAP; i++){
	experienceTotal[i] = -280 + 10000000000 * ( 1 / (_sigma*sqrt(2*pi)) ) * exp( - (sqr(i - _mu) / (2*sqr(_sigma))) );
	//level[i] = 100*sqr(i/2);
}

for(var i = 0; i < LEVEL_CAP-1; i++){
	experienceDifference[i] = experienceTotal[i+1]-experienceTotal[i];
}


followingList = scr_linked_list_create();
