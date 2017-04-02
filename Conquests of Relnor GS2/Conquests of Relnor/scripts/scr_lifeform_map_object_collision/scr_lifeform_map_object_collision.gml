
if(!isPlayer){
	if(alarm[5] == -1){
		alarm[5] = room_speed;
		firstCollidedObject = other;
		firstCollidedX = x;
		firstCollidedY = y;
	}
	else{
		lastCollidedObject = other;
	}
}
