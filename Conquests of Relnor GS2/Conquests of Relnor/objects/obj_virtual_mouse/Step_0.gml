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

	if(alarm[1] == -1){
		var _mouseX = mouseX;
		var _mouseY = mouseY;

		var _possibleClickable = scr_linked_list_create();
		with(obj_ui_clickable_parent){
			if(scr_ui_draw_is_visible(self) && clickedScript != noone){
				if(global.player.triggers[TRIGGER_UP] && y < _mouseY){
					scr_linked_list_add(_possibleClickable, self);
				}
				if(global.player.triggers[TRIGGER_RIGHT] && x > _mouseX){
					scr_linked_list_add(_possibleClickable, self);
				}
				if(global.player.triggers[TRIGGER_DOWN] && y > _mouseY){
					scr_linked_list_add(_possibleClickable, self);
				}
				if(global.player.triggers[TRIGGER_LEFT] && x < _mouseX){
					scr_linked_list_add(_possibleClickable, self);
				}
			}
		}
	
		var _clickableObject = noone;
		if(global.player.triggers[TRIGGER_UP]){
			var _possibleLineUps = scr_linked_list_create();
			
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.x == mouseX){
					scr_linked_list_add(_possibleLineUps, _clickable);
				}
			}
			
			if(!scr_linked_list_is_empty(_possibleLineUps)){
				scr_linked_list_destroy(_possibleClickable);
				_possibleClickable = _possibleLineUps;
			}
		
			var _largestCoordY = -1;
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.y > _largestCoordY){
					_largestCoordY = _clickable.y;
					_clickableObject = _clickable;
				}
			}
		}
		if(global.player.triggers[TRIGGER_RIGHT]){
			var _possibleLineUps = scr_linked_list_create();
			
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.y == mouseY){
					scr_linked_list_add(_possibleLineUps, _clickable);
				}
			}
			
			if(!scr_linked_list_is_empty(_possibleLineUps)){
				scr_linked_list_destroy(_possibleClickable);
				_possibleClickable = _possibleLineUps;
			}
		
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			var _smallestCoord = MAX;
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.x < _smallestCoord){
					_smallestCoord = _clickable.x;
					_clickableObject = _clickable;
				}
			}
		}
		if(global.player.triggers[TRIGGER_DOWN]){
			var _possibleLineUps = scr_linked_list_create();
			
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.x == mouseX){
					scr_linked_list_add(_possibleLineUps, _clickable);
				}
			}
			
			if(!scr_linked_list_is_empty(_possibleLineUps)){
				scr_linked_list_destroy(_possibleClickable);
				_possibleClickable = _possibleLineUps;
			}
		
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			var _smallestCoord = MAX;
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.y < _smallestCoord){
					_smallestCoord = _clickable.y;
					_clickableObject = _clickable;
				}
			}
		}
		if(global.player.triggers[TRIGGER_LEFT]){
			var _possibleLineUps = scr_linked_list_create();
			
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.y == mouseY){
					scr_linked_list_add(_possibleLineUps, _clickable);
				}
			}
			
			if(!scr_linked_list_is_empty(_possibleLineUps)){
				scr_linked_list_destroy(_possibleClickable);
				_possibleClickable = _possibleLineUps;
			}
			
			var _totalPossibleClickable = scr_linked_list_size(_possibleClickable);
			var _largestCoord = -1;
			for(var i = 0; i < _totalPossibleClickable; i++){
				var _clickable = scr_linked_list_get_next(_possibleClickable);
				if(_clickable.x > _largestCoord){
					_largestCoord = _clickable.x;
					_clickableObject = _clickable;
				}
			}	
		}
	
		if(_clickableObject != noone){
			mouseX = _clickableObject.x;
			mouseY = _clickableObject.y;
			alarm[1] = 10;
		}
		
		scr_linked_list_destroy(_possibleClickable);
	}

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