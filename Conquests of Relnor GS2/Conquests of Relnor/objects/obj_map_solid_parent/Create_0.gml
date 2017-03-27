///Depth

depth = -y;

hasShadow = false;
shadowOpacity = 0.25;

if(global.currentRoom != -1 && 
	global.mapSaves.objectList[global.currentRoom] != noone &&
	!global.loadingInstances){
	instance_destroy();
	return false;
}