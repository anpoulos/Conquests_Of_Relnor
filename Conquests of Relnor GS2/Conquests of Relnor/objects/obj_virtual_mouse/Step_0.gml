/// @description Insert description here
// You can write your code in this editor

if(global.player.triggers[TRIGGER_USE]){
	if(!mouseDown){
		mousePressed = true;
	}
	mouseDown = true;
}
else if(mouseDown){
	mouseReleased = true;
	mouseDown = false;
	mousePressed = false;
}
else if(mouseReleased){
	mouseReleased = false;
}

if(mousePressed){
	
	mousePressed = false;
}

if(mouseDown){

}

if(mouseReleased){

	mouseReleased = false;
}

if(mode == VIRTUAL_MOUSE_MODE_BUTTON){

}
else{

	var _increaseMoveSpeed = false;

	if(global.player.triggers[TRIGGER_UP]){
		mouseY -= currentSpeed;
		if(mouseY < 0){
			mouseY = 0;
		}
		else{
			_increaseMoveSpeed = true;
		}
	}
	if(global.player.triggers[TRIGGER_DOWN]){
		mouseY += currentSpeed;
		if(mouseY > display_get_gui_height()){
			mouseY = display_get_gui_height();
		}
		else{
			_increaseMoveSpeed = true;
		}
	}
	
	if(global.player.triggers[TRIGGER_LEFT]){
		mouseX -= currentSpeed;
		if(mouseX < 0){
			mouseX = 0;
		}
		else{
			_increaseMoveSpeed = true;
		}
	}
	
	if(global.player.triggers[TRIGGER_RIGHT]){
		mouseX += currentSpeed;
		if(mouseX > display_get_gui_width()){
			mouseX = display_get_gui_width();
		}
		else{
			_increaseMoveSpeed = true;
		}
	}
	
	if(_increaseMoveSpeed){
		alarm[0] = 2;
		if(currentSpeed < maxSpeed){
			currentSpeed += mouseMoveAmount;
		}
	}
}