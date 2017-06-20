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
	with(global.player){
		scr_player_mouse_global_left_down(virtualMouse.mouseX, virtualMouse.mouseY);
	}
}

if(mouseReleased){
	with(global.player){
		scr_player_mouse_global_left_released(virtualMouse.mouseX, virtualMouse.mouseY);
	}	
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
		var _maxY = gui ? display_get_gui_height() : room_width;
		if(mouseY > _maxY){
			mouseY = _maxY;
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
		var _maxX = gui ? display_get_gui_width() : room_width;
		if(mouseX > _maxX){
			mouseX = _maxX;
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