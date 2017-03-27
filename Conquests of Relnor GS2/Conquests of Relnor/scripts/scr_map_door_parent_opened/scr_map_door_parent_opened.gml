///scr_map_door_parent_opened

if(destinationRoom != noone){
	global.mapSaves.destinationX = destinationX;
	global.mapSaves.destinationY = destinationY;
	global.mapSaves.destinationRoom = destinationRoom;
	global.mapSaves.isLoading = true;
	global.mapSaves.loadingOpacity = 0.1;
}
