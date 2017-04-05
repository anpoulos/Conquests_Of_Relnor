/// @description Insert description here
// You can write your code in this editor

global.shadowOpacity = 0.3;
global.shadowOpacityMax = 0.3;
global.moonTonight = false;
global.additiveLights = scr_linked_list_create();

for(var i = 0; i < ROOM_MAX; i++){
	lifeformList[i] = noone;
	objectList[i] = noone;
	itemList[i] = noone;
}

destinationX = noone;
destinationY = noone;
destinationRoom = noone;
loadingOpacity = 0.0;

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
