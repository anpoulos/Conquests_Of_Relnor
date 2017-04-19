///scr_player_gui_party_update_character_panels

	if(NextCharacterButton != noone){
		instance_destroy(NextCharacterButton);
		NextCharacterButton = noone;
	}

    while(!scr_linked_list_is_empty(CharacterPanels)){
		instance_destroy(scr_linked_list_remove_next(CharacterPanels));
    }
    
    var _margin = 10;
    var _panelWidth = 80;
    var _panelHeight = 80;
    
    var _playerPanelX = PauseMenuPlayerInformationContainer.leftX + _panelWidth/2 + _margin;
    var _playerPanelY = PauseMenuPlayerInformationContainer.topY + _panelHeight/2 + _margin;
    var _playerPanel = scr_player_gui_party_create_character_panel(self, _playerPanelX, _playerPanelY);

	scr_linked_list_add(CharacterPanels, _playerPanel);
    
	
	var _totalSelected = scr_linked_list_size(commandModule.selected);
	
	if(_totalSelected > 24){
        //Start of Next Button
            var _buttonColorArray = scr_create_obj_array4_repeat(make_colour_rgb(50,50,150), "_buttonColorArray");
            var _buttonPressedColor = make_colour_rgb(0,0,100);
                
            var _buttonPosArray = scr_create_obj_array4_ui(60, 40);
                
            var _fontColor = c_white;
                
            var _buttonX = PauseMenuPlayerInformationContainer.rightX - 50;
            var _buttonY = PauseMenuPlayerInformationContainer.y;
                
            var _text = "-->";
                            
            var _buttonInfo = scr_ui_get_obj_ui_button_information(5, scr_ui_buttons_party_next_clicked, self, 
            _text, fnt_default_large, _fontColor, 1.0, 0.8);
                
			NextCharacterButton = scr_ui_button_constructor(_buttonX, _buttonY, _buttonPosArray, 
            _buttonColorArray, _buttonPressedColor, true, _buttonInfo, PauseMenuPlayerInformationContainer);
                
			NextCharacterButton.isVisible = true;
		
            scr_destroy_instance(_buttonColorArray);
            scr_destroy_instance(_buttonPosArray);
            scr_destroy_instance(_buttonInfo);
        //End of Next Button
	}
	
    var _lastX = _playerPanelX;
    var _lastY = _playerPanelY;
    
    for(var i = 1; i < _totalSelected+1 && i < 24; i++){
        var _selectedNPC = scr_linked_list_get_next(commandModule.selected);
        
        _lastX = _lastX + _panelWidth + _margin;
        if(i % 12 == 0 && i != 0){
            _lastY = _lastY + _panelHeight + _margin;
            _lastX = _playerPanelX;
        }
        
        var _panel = scr_player_gui_party_create_character_panel(_selectedNPC, _lastX, _lastY);
		if(_panel.character == InventoryInfoContainerItemStats.character){
			_panel.selected = true;
		}
        scr_linked_list_add(CharacterPanels, _panel);
		
    }