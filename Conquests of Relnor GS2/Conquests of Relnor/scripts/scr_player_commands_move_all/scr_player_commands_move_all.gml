///scr_player_commands_move_all

	commandModule.followTarget = noone;

    var _averageX = 0;
    var _averageY = 0;
    var _totalSelected = self.commandModule.totalSelected;
    var _selected = self.commandModule.selected;
    var _unitArrivalCommand = self.commandModule.unitArrivalCommand;
    
    for(var i = 0; i < _totalSelected; i++){
        var _currentNPC = scr_linked_list_get_next(_selected);
        _averageX += _currentNPC.x;
        _averageY += _currentNPC.y;
    }
    
    _averageX /= _totalSelected;
    _averageY /= _totalSelected;

    for(var i = 0; i < _totalSelected; i++){
        var _currentNPC = scr_linked_list_get_next(_selected);
        var _myOffsetX = _currentNPC.x - _averageX;
        var _myOffsetY = _currentNPC.y - _averageY;
        
		var _mouseX = virtualMouse != noone ? virtualMouse.mouseX : mouse_x;
		var _mouseY = virtualMouse != noone ? virtualMouse.mouseY : mouse_y;
		
        var _destinationX = _mouseX + _myOffsetX;
        var _destinationY = _mouseY + _myOffsetY;
        scr_npc_commands_move(_currentNPC, _unitArrivalCommand, _destinationX, _destinationY, false);
    }
