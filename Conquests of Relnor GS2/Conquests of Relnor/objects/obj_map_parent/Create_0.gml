/// @description Insert description here
// You can write your code in this editor

depth = -y;

hasShadow = false;
shadowOpacity = 0.25;
blend = false;

if(global.currentRoom != -1 && 
	global.mapSaves.objectList[global.currentRoom] != noone &&
	!global.loadingInstances){
	instance_destroy();
	return false;
}