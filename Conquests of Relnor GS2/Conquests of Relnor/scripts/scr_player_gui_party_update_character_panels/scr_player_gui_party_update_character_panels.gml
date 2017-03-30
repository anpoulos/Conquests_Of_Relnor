///scr_player_gui_party_update_character_panels

	var _selectedCharacter = noone;

    while(!scr_linked_list_is_empty(CharacterPanels)){
        var _panel = scr_linked_list_remove_next(CharacterPanels);
		if(_panel.selected){
			_selectedCharacter = _panel.character;
		}
        with(_panel){
            instance_destroy();
        }
    }
    
    var _margin = 10;
    var _panelWidth = 80;
    var _panelHeight = 80;
    
    var _playerPanelX = PauseMenuPlayerInformationContainer.leftX + _panelWidth/2 + _margin;
    var _playerPanelY = PauseMenuPlayerInformationContainer.topY + _panelHeight/2 + _margin;
    var _playerPanel = scr_player_gui_party_create_character_panel(self, _playerPanelX, _playerPanelY);

	scr_linked_list_add(CharacterPanels, _playerPanel);
    
    var _lastX = _playerPanelX;
    var _lastY = _playerPanelY;
    
    for(var i = 1; i < scr_linked_list_size(commandModule.selected)+1 && i < 24; i++){
        var _selectedNPC = scr_linked_list_get_next(commandModule.selected);
        
        _lastX = _lastX + _panelWidth + _margin;
        if(i % 12 == 0 && i != 0){
            _lastY = _lastY + _panelHeight + _margin;
            _lastX = _playerPanelX;
        }
        
        var _panel = scr_player_gui_party_create_character_panel(_selectedNPC, _lastX, _lastY);
		if(_panel.character == _selectedCharacter){
			_panel.selected = true;
		}
        scr_linked_list_add(CharacterPanels, _panel);
		
    }