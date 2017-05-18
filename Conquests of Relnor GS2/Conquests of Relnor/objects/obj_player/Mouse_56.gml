
if(commandModule.engageRangeClicked){
	commandModule.engageRangeClicked = false;
	
	var _totalSelected = scr_linked_list_size(commandModule.selected);
	for(var i = 0; i < _totalSelected; i++){
		var _selectedNpc = scr_linked_list_get_next(commandModule.selected);
		if(_selectedNpc.previewEngageDistance > 0){
			_selectedNpc.engageDistance = _selectedNpc.previewEngageDistance;
			_selectedNpc.previewEngageDistance = 0;
		}
	}
	
	return false;
}

if(commandModule.wanderRangeClicked){
	commandModule.wanderRangeClicked = false;
	
	var _totalSelected = scr_linked_list_size(commandModule.selected);
	for(var i = 0; i < _totalSelected; i++){
		var _selectedNpc = scr_linked_list_get_next(commandModule.selected);
		_selectedNpc.wanderDistance = min(commandModule.previewWanderDistance, _selectedNpc.sight);;
		_selectedNpc.originX = commandModule.wanderRangeX;
		_selectedNpc.originY = commandModule.wanderRangeY;
	}
	
	commandModule.wanderRangeX = 0;
	commandModule.wanderRangeY = 0;
	commandModule.previewWanderDistance = 0;
	
	return false;
}

if(isBusy || scr_linked_list_size(ClickedUIObjects) > 0){

    while(scr_linked_list_size(ClickedUIObjects) > 0){
        var _uiObject = scr_linked_list_remove_next(ClickedUIObjects);
        //all objects in this list are from the clickable parent class
		if(MoveItem == noone || 
			(_uiObject == MoveItemButtonCurrent || _uiObject.object_index == obj_ui_party_character_panel)){
	        with(_uiObject){
				scr_ui_draw_clickable_clicked();
			}
		}
    }    

    return false;
}

if(!global.isWorldMap){
	//move units
	if(!self.stillSelecting){
		if(commandModule.mouseCommand != noone){
	        script_execute(self.commandModule.mouseCommand);
		}
	}

	with(self.selectBox){
	    instance_destroy();
	}
	self.selectBox = noone;
}